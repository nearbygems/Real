module User where

type Login = String
type Password = String
type AvatarURL = String
type UserId = Integer

user_info :: Login -> Password -> AvatarURL -> UserId -> String
user_info login password avatar_URL user_id = "Full info about user @" ++ (show user_id) ++ ":" ++
                                              "\n login: " ++ login ++
                                              "\n password: " ++ password ++
                                              "\n avatar: " ++ avatar_URL

type EmptyInfo = Login -> Password -> AvatarURL -> UserId -> String
type WithLogin = Password -> AvatarURL -> UserId -> String
type AndWithPassword = AvatarURL -> UserId -> String
type AndWithAvatarURL = UserId -> String

store_login_in :: EmptyInfo -> UserId -> WithLogin
store_login_in empty_info user_id = empty_info "bergen"

store_password_in :: WithLogin -> UserId -> AndWithPassword
store_password_in info_with_login user_id = info_with_login "123456789abc"

store_avatar_URL_in :: AndWithPassword -> UserId -> AndWithAvatarURL
store_avatar_URL_in info_with_password user_id = info_with_password "http://avatar.biz/bergen_avatar.png"

type Prefix = String

obtain_login :: UserId -> (Prefix -> String)
obtain_login user_id = login_storage "bergen" where login_storage = \login prefix -> prefix ++ ": " ++ login
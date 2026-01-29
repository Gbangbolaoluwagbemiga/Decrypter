import { AppConfig, UserSession } from "@stacks/connect"

let session: UserSession | undefined

export function getUserSession(): UserSession {
  if (!session) {
    const appConfig = new AppConfig(["store_write", "publish_data"])
    session = new UserSession({ appConfig })
  }
  return session
}

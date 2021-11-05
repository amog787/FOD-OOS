.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$cVvNajwVr5sFISXC5NXOu3pYhPo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$cVvNajwVr5sFISXC5NXOu3pYhPo;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$cVvNajwVr5sFISXC5NXOu3pYhPo;->f$1:Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$cVvNajwVr5sFISXC5NXOu3pYhPo;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$cVvNajwVr5sFISXC5NXOu3pYhPo;->f$1:Landroid/content/pm/UserInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->lambda$onStopUser$3$NotificationManagerService(Landroid/content/pm/UserInfo;)V

    return-void
.end method

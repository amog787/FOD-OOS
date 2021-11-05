.class Lcom/android/server/notification/NotificationManagerService$11$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$11;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$11;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$11;

    .line 3473
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->this$1:Lcom/android/server/notification/NotificationManagerService$11;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3476
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$pkg:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$uid:I

    const/16 v2, -0x270f

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/OpAppRecordInjector;->noteNotificationChanged(Ljava/lang/String;IIZ)V

    .line 3477
    return-void
.end method

.class Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;
.super Landroid/os/Handler;
.source "OpNotificationLightControllerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OpNotificationLightControllerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/OpNotificationLightControllerInjector;


# direct methods
.method public constructor <init>(Lcom/oneplus/notification/OpNotificationLightControllerInjector;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 71
    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;->this$0:Lcom/oneplus/notification/OpNotificationLightControllerInjector;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationLightControllerInjector$WorkerHandler;->this$0:Lcom/oneplus/notification/OpNotificationLightControllerInjector;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationLightControllerInjector;->access$000(Lcom/oneplus/notification/OpNotificationLightControllerInjector;)V

    .line 82
    :goto_0
    return-void
.end method

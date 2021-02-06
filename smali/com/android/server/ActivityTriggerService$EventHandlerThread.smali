.class public Lcom/android/server/ActivityTriggerService$EventHandlerThread;
.super Landroid/os/HandlerThread;
.source "ActivityTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ActivityTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandlerThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/ActivityTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ActivityTriggerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ActivityTriggerService;
    .param p2, "name"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/server/ActivityTriggerService$EventHandlerThread;->this$0:Lcom/android/server/ActivityTriggerService;

    .line 68
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/server/ActivityTriggerService$EventHandlerThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onLooperPrepared()V
    .locals 1

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/ActivityTriggerService$EventHandlerThread;->handler:Landroid/os/Handler;

    .line 75
    return-void
.end method

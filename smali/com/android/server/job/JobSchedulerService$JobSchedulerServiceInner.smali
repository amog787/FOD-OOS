.class public final Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobSchedulerServiceInner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 284
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onDeviceIdleStateChanged(Z)V
    .locals 1
    .param p1, "deviceidle"    # Z

    .line 286
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->onDeviceIdleStateChanged(Z)V

    .line 287
    return-void
.end method

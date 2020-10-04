.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$topAppWindowChanged$1$StatusBarManagerService(IZ)V

    return-void
.end method

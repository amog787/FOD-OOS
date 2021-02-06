.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$E67OP8P-DuCzmX46ISCwIyOv93Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$E67OP8P-DuCzmX46ISCwIyOv93Q;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$E67OP8P-DuCzmX46ISCwIyOv93Q;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$notifyBarAttachChanged$3$StatusBarManagerService()V

    return-void
.end method

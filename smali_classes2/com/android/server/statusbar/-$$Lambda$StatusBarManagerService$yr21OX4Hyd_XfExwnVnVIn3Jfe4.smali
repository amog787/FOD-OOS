.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$disableLocked$0$StatusBarManagerService(I)V

    return-void
.end method

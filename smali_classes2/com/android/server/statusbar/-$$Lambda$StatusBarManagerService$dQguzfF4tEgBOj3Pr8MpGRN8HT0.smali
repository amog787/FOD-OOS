.class public final synthetic Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$1:I

    iput-object p3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$2:Landroid/os/IBinder;

    iput p4, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$3:I

    iput p5, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$4:I

    iput-boolean p6, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$5:Z

    iput-boolean p7, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$1:I

    iget-object v2, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$2:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$3:I

    iget v4, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$4:I

    iget-boolean v5, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$5:Z

    iget-boolean v6, p0, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0;->f$6:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$setImeWindowStatus$2$StatusBarManagerService(ILandroid/os/IBinder;IIZZ)V

    return-void
.end method

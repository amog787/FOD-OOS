.class public final synthetic Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService;

.field public final synthetic f$1:Landroid/os/Binder;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iput-object p2, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$1:Landroid/os/Binder;

    iput-object p3, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$2:Landroid/content/ComponentName;

    iput-boolean p4, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$4:Z

    iput p6, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$5:I

    iput-object p7, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$6:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iget-object v1, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$1:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$2:Landroid/content/ComponentName;

    iget-boolean v3, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$4:Z

    iget v5, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$5:I

    iget-object v6, p0, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;->f$6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/dreams/DreamManagerService;->lambda$startDreamLocked$0$DreamManagerService(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    return-void
.end method

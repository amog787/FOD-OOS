.class public final synthetic Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/LocationManagerService;

.field private final synthetic f$1:Landroid/os/PowerSaveState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/PowerSaveState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;->f$0:Lcom/android/server/LocationManagerService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;->f$1:Landroid/os/PowerSaveState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;->f$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;->f$1:Landroid/os/PowerSaveState;

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService;->lambda$initializeLocked$6$LocationManagerService(Landroid/os/PowerSaveState;)V

    return-void
.end method

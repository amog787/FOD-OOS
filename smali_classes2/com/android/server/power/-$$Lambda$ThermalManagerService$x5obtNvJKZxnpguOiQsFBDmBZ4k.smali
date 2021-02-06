.class public final synthetic Lcom/android/server/power/-$$Lambda$ThermalManagerService$x5obtNvJKZxnpguOiQsFBDmBZ4k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IThermalEventListener;

.field public final synthetic f$1:Landroid/os/Temperature;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$x5obtNvJKZxnpguOiQsFBDmBZ4k;->f$0:Landroid/os/IThermalEventListener;

    iput-object p2, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$x5obtNvJKZxnpguOiQsFBDmBZ4k;->f$1:Landroid/os/Temperature;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$x5obtNvJKZxnpguOiQsFBDmBZ4k;->f$0:Landroid/os/IThermalEventListener;

    iget-object v1, p0, Lcom/android/server/power/-$$Lambda$ThermalManagerService$x5obtNvJKZxnpguOiQsFBDmBZ4k;->f$1:Landroid/os/Temperature;

    invoke-static {v0, v1}, Lcom/android/server/power/ThermalManagerService;->lambda$postEventListener$1(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V

    return-void
.end method

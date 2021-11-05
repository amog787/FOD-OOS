.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;

.field public final synthetic f$1:Landroid/os/PowerSaveState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;Landroid/os/PowerSaveState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4;->f$0:Lcom/android/server/location/LocationManagerService;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4;->f$1:Landroid/os/PowerSaveState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4;->f$0:Lcom/android/server/location/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4;->f$1:Landroid/os/PowerSaveState;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService;->lambda$onSystemReady$4$LocationManagerService(Landroid/os/PowerSaveState;)V

    return-void
.end method

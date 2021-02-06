.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$_lFMOHyrWj6WiqyBQsMWkc1X03E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$_lFMOHyrWj6WiqyBQsMWkc1X03E;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$_lFMOHyrWj6WiqyBQsMWkc1X03E;->f$0:Lcom/android/server/location/LocationManagerService;

    check-cast p1, Landroid/os/PowerSaveState;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$onSystemReady$5$LocationManagerService(Landroid/os/PowerSaveState;)V

    return-void
.end method

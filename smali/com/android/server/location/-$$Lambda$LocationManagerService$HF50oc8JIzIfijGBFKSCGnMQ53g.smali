.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$HF50oc8JIzIfijGBFKSCGnMQ53g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$HF50oc8JIzIfijGBFKSCGnMQ53g;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$HF50oc8JIzIfijGBFKSCGnMQ53g;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService;->lambda$onSystemReady$2$LocationManagerService()V

    return-void
.end method

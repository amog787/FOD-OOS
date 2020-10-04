.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$tyyIxrN1UBdbonRFAT6eEH4wVic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$tyyIxrN1UBdbonRFAT6eEH4wVic;->f$0:Lcom/android/server/ConnectivityService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$tyyIxrN1UBdbonRFAT6eEH4wVic;->f$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->lambda$setUnderlyingNetworksForVpn$5$ConnectivityService()V

    return-void
.end method

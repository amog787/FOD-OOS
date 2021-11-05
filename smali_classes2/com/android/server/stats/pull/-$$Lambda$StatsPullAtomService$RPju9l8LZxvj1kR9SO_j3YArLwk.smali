.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$RPju9l8LZxvj1kR9SO_j3YArLwk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$RPju9l8LZxvj1kR9SO_j3YArLwk;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$RPju9l8LZxvj1kR9SO_j3YArLwk;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIThermalService$2$StatsPullAtomService()V

    return-void
.end method

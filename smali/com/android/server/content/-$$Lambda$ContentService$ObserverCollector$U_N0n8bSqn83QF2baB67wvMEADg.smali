.class public final synthetic Lcom/android/server/content/-$$Lambda$ContentService$ObserverCollector$U_N0n8bSqn83QF2baB67wvMEADg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/ContentService$ObserverCollector$Key;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/ContentService$ObserverCollector$Key;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$ContentService$ObserverCollector$U_N0n8bSqn83QF2baB67wvMEADg;->f$0:Lcom/android/server/content/ContentService$ObserverCollector$Key;

    iput-object p2, p0, Lcom/android/server/content/-$$Lambda$ContentService$ObserverCollector$U_N0n8bSqn83QF2baB67wvMEADg;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$ContentService$ObserverCollector$U_N0n8bSqn83QF2baB67wvMEADg;->f$0:Lcom/android/server/content/ContentService$ObserverCollector$Key;

    iget-object v1, p0, Lcom/android/server/content/-$$Lambda$ContentService$ObserverCollector$U_N0n8bSqn83QF2baB67wvMEADg;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService$ObserverCollector;->lambda$dispatch$0(Lcom/android/server/content/ContentService$ObserverCollector$Key;Ljava/util/List;)V

    return-void
.end method

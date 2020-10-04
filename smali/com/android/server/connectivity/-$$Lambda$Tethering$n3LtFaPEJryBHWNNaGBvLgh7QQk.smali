.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;->f$0:Lcom/android/server/connectivity/Tethering;

    return-void
.end method


# virtual methods
.method public final fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;->f$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->lambda$new$1$Tethering()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    return-object v0
.end method

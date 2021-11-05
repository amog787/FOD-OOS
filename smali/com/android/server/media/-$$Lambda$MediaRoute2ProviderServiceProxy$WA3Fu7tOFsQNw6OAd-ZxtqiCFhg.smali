.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$WA3Fu7tOFsQNw6OAd-ZxtqiCFhg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$WA3Fu7tOFsQNw6OAd-ZxtqiCFhg;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderServiceProxy$WA3Fu7tOFsQNw6OAd-ZxtqiCFhg;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/media/RoutingSessionInfo;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->lambda$onSessionCreated$0(Ljava/lang/String;Landroid/media/RoutingSessionInfo;)Z

    move-result p1

    return p1
.end method

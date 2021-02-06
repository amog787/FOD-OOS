.class public final synthetic Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$wZCGZbIMAspHRG64AcKlNjhWJEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/location/ProviderProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$wZCGZbIMAspHRG64AcKlNjhWJEk;->f$0:Lcom/android/internal/location/ProviderProperties;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$wZCGZbIMAspHRG64AcKlNjhWJEk;->f$0:Lcom/android/internal/location/ProviderProperties;

    check-cast p1, Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-static {v0, p1}, Lcom/android/server/location/AbstractLocationProvider;->lambda$setProperties$4(Lcom/android/internal/location/ProviderProperties;Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$kFGsZg9Hx50h6WYQeAMQABkRKNU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/UnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$kFGsZg9Hx50h6WYQeAMQABkRKNU;->f$0:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$kFGsZg9Hx50h6WYQeAMQABkRKNU;->f$0:Ljava/util/function/UnaryOperator;

    check-cast p1, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    invoke-static {v0, p1}, Lcom/android/server/location/AbstractLocationProvider;->lambda$setState$2(Ljava/util/function/UnaryOperator;Lcom/android/server/location/AbstractLocationProvider$InternalState;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object p1

    return-object p1
.end method

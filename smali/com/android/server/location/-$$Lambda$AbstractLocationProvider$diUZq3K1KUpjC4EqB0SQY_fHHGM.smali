.class public final synthetic Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$diUZq3K1KUpjC4EqB0SQY_fHHGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/AbstractLocationProvider$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/AbstractLocationProvider$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$diUZq3K1KUpjC4EqB0SQY_fHHGM;->f$0:Lcom/android/server/location/AbstractLocationProvider$Listener;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$diUZq3K1KUpjC4EqB0SQY_fHHGM;->f$0:Lcom/android/server/location/AbstractLocationProvider$Listener;

    check-cast p1, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    invoke-static {v0, p1}, Lcom/android/server/location/AbstractLocationProvider;->lambda$setListener$0(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$InternalState;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object p1

    return-object p1
.end method

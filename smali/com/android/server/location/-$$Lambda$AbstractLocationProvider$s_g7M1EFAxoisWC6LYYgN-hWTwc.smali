.class public final synthetic Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$s_g7M1EFAxoisWC6LYYgN-hWTwc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$s_g7M1EFAxoisWC6LYYgN-hWTwc;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$s_g7M1EFAxoisWC6LYYgN-hWTwc;->f$0:Z

    check-cast p1, Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-static {v0, p1}, Lcom/android/server/location/AbstractLocationProvider;->lambda$setAllowed$3(ZLcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object p1

    return-object p1
.end method

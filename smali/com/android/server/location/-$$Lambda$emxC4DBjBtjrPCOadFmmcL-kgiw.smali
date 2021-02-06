.class public final synthetic Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;

    invoke-direct {v0}, Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;-><init>()V

    sput-object v0, Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;->INSTANCE:Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/location/AbstractLocationProvider;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/String;

    check-cast p5, Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/location/AbstractLocationProvider;->onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

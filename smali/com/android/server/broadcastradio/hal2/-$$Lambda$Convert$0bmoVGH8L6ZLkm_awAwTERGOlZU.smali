.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$Convert$0bmoVGH8L6ZLkm_awAwTERGOlZU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$dabConfigFromHal$0(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

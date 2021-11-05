.class public final synthetic Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    return-void
.end method

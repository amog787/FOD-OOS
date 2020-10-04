.class public final synthetic Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M;

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

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->resetSystemUiVisibilityLw()V

    return-void
.end method

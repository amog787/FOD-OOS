.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsStateController$1$-dEtYGbz4qvW5yFCIz0yJqWDBWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$1$-dEtYGbz4qvW5yFCIz0yJqWDBWA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$1$-dEtYGbz4qvW5yFCIz0yJqWDBWA;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$1$-dEtYGbz4qvW5yFCIz0yJqWDBWA;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$1$-dEtYGbz4qvW5yFCIz0yJqWDBWA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$1$-dEtYGbz4qvW5yFCIz0yJqWDBWA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/InsetsStateController$1;->lambda$notifyInsetsControlChanged$0()V

    return-void
.end method

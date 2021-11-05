.class public final synthetic Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$APiSnEpUwnLFg5o4cp87NyJw4j4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$APiSnEpUwnLFg5o4cp87NyJw4j4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$APiSnEpUwnLFg5o4cp87NyJw4j4;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$APiSnEpUwnLFg5o4cp87NyJw4j4;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$APiSnEpUwnLFg5o4cp87NyJw4j4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$APiSnEpUwnLFg5o4cp87NyJw4j4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ResetTargetTaskHelper;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/ResetTargetTaskHelper;->lambda$APiSnEpUwnLFg5o4cp87NyJw4j4(Lcom/android/server/wm/ResetTargetTaskHelper;Lcom/android/server/wm/Task;)V

    return-void
.end method

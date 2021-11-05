.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/WindowProcessController;

    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$0ZupnQyxl7yZKgMmf2zwvykG50s(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

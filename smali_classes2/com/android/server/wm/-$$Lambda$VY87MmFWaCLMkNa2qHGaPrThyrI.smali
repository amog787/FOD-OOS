.class public final synthetic Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/wm/WindowProcessListener;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/String;

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object p0, p1

    move p1, p2

    move p2, p3

    move-object p3, p4

    move-wide p4, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/server/wm/WindowProcessListener;->onStartActivity(IZLjava/lang/String;J)V

    return-void
.end method

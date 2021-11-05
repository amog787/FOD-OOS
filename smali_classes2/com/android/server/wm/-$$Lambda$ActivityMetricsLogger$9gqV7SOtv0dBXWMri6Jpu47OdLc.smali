.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$9gqV7SOtv0dBXWMri6Jpu47OdLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$9gqV7SOtv0dBXWMri6Jpu47OdLc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$9gqV7SOtv0dBXWMri6Jpu47OdLc;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$9gqV7SOtv0dBXWMri6Jpu47OdLc;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$9gqV7SOtv0dBXWMri6Jpu47OdLc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$9gqV7SOtv0dBXWMri6Jpu47OdLc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityMetricsLogger;

    check-cast p2, Lcom/android/server/wm/Task;

    check-cast p3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$9gqV7SOtv0dBXWMri6Jpu47OdLc(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

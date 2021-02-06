.class public final synthetic Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$EnsureActivitiesVisibleHelper$Bbb3nMFa3F8er_OBuKA7-SpeSKo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Lcom/android/server/wm/ActivityRecord;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->lambda$Bbb3nMFa3F8er_OBuKA7-SpeSKo(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.class Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportanceHistogram"
.end annotation


# static fields
.field private static final IMPORTANCE_NAMES:[Ljava/lang/String;

.field private static final NUM_IMPORTANCES:I = 0x6


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:[I

.field private final mCounterNames:[Ljava/lang/String;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 764
    const-string/jumbo v0, "none"

    const-string/jumbo v1, "min"

    const-string/jumbo v2, "low"

    const-string v3, "default"

    const-string v4, "high"

    const-string/jumbo v5, "max"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    .line 773
    const/4 v0, 0x6

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 774
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    .line 775
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    .line 776
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 777
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method increment(I)V
    .locals 2
    .param p1, "imp"    # I

    .line 782
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 783
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 784
    return-void
.end method

.method maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 4
    .param p1, "prev"    # Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 787
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v1, v1, v0

    iget-object v2, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    .line 789
    .local v1, "value":I
    if-lez v1, :cond_0

    .line 790
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 787
    .end local v1    # "value":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 3
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "prev"    # Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .local v0, "output":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 811
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 812
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 813
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 3
    .param p1, "that"    # Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 796
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    iget-object v2, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

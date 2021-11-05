.class Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AmbientBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AmbientBrightnessStats"
.end annotation


# static fields
.field private static final ATTR_BUCKET_BOUNDARIES:Ljava/lang/String; = "bucket-boundaries"

.field private static final ATTR_BUCKET_STATS:Ljava/lang/String; = "bucket-stats"

.field private static final ATTR_LOCAL_DATE:Ljava/lang/String; = "local-date"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final TAG_AMBIENT_BRIGHTNESS_DAY_STATS:Ljava/lang/String; = "ambient-brightness-day-stats"

.field private static final TAG_AMBIENT_BRIGHTNESS_STATS:Ljava/lang/String; = "ambient-brightness-stats"


# instance fields
.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 148
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 150
    return-void
.end method

.method private getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;
    .locals 4
    .param p2, "localDate"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/hardware/display/AmbientBrightnessDayStats;"
        }
    .end annotation

    .line 290
    .local p1, "userStats":Ljava/util/Deque;, "Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 291
    .local v0, "lastBrightnessStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    return-object v0

    .line 295
    :cond_0
    new-instance v1, Landroid/hardware/display/AmbientBrightnessDayStats;

    sget-object v2, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    invoke-direct {v1, p2, v2}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F)V

    .line 297
    .local v1, "dayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 298
    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 300
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 301
    return-object v1
.end method

.method private getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;
    .locals 2
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;I)",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 282
    .local p1, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    return-object v0
.end method


# virtual methods
.method public getUserStats(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(ILjava/time/LocalDate;FF)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "localDate"    # Ljava/time/LocalDate;
    .param p3, "ambientBrightness"    # F
    .param p4, "durationSec"    # F

    .line 154
    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object v0

    .line 155
    .local v0, "userStats":Ljava/util/Deque;, "Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    invoke-direct {p0, v0, p2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;

    move-result-object v1

    .line 156
    .local v1, "dayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    invoke-virtual {v1, p3, p4}, Landroid/hardware/display/AmbientBrightnessDayStats;->log(FF)V

    .line 157
    return-void
.end method

.method public readFromXML(Ljava/io/InputStream;)V
    .locals 18
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    move-object/from16 v1, p0

    const-string v0, ","

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v2, "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 210
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 213
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v6, v4

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v4, v7, :cond_0

    const/4 v4, 0x2

    if-eq v6, v4, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "tag":Ljava/lang/String;
    const-string v8, "ambient-brightness-stats"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 222
    iget-object v8, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v8}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v8

    const-wide/16 v9, 0x7

    invoke-virtual {v8, v9, v10}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v8

    .line 223
    .local v8, "cutOffDate":Ljava/time/LocalDate;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 224
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 225
    .local v9, "outerDepth":I
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v6, v10

    if-eq v10, v7, :cond_9

    const/4 v10, 0x3

    if-ne v6, v10, :cond_2

    .line 226
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v9, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v17, v3

    goto/16 :goto_5

    .line 227
    :cond_2
    :goto_2
    if-eq v6, v10, :cond_8

    const/4 v10, 0x4

    if-ne v6, v10, :cond_3

    .line 228
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    goto/16 :goto_4

    .line 230
    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 231
    const-string v10, "ambient-brightness-day-stats"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 232
    const-string/jumbo v10, "user"

    const/4 v11, 0x0

    invoke-interface {v3, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 233
    .local v10, "userSerialNumber":Ljava/lang/String;
    const-string/jumbo v12, "local-date"

    .line 234
    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 233
    invoke-static {v12}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v12

    .line 235
    .local v12, "localDate":Ljava/time/LocalDate;
    const-string v13, "bucket-boundaries"

    invoke-interface {v3, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 236
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 237
    .local v13, "bucketBoundaries":[Ljava/lang/String;
    const-string v14, "bucket-stats"

    invoke-interface {v3, v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 238
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 239
    .local v11, "bucketStats":[Ljava/lang/String;
    array-length v14, v13

    array-length v15, v11

    if-ne v14, v15, :cond_6

    array-length v14, v13

    if-lt v14, v7, :cond_6

    .line 243
    array-length v14, v13

    new-array v14, v14, [F

    .line 244
    .local v14, "parsedBucketBoundaries":[F
    array-length v15, v11

    new-array v15, v15, [F

    .line 245
    .local v15, "parsedBucketStats":[F
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_3
    move-object/from16 v16, v0

    array-length v0, v13

    if-ge v7, v0, :cond_4

    .line 246
    aget-object v0, v13, v7

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v14, v7

    .line 247
    aget-object v0, v11, v7

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aput v0, v15, v7

    .line 245
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    goto :goto_3

    .line 249
    .end local v7    # "i":I
    :cond_4
    iget-object v0, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v7}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$100(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v7

    .line 250
    move-object/from16 v17, v3

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v17, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 249
    invoke-virtual {v0, v7, v3}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v0

    .line 251
    .local v0, "userId":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    invoke-virtual {v12, v8}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    invoke-direct {v1, v2, v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object v3

    .line 254
    .local v3, "userStats":Ljava/util/Deque;, "Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    new-instance v7, Landroid/hardware/display/AmbientBrightnessDayStats;

    invoke-direct {v7, v12, v14, v15}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F[F)V

    invoke-interface {v3, v7}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 258
    .end local v0    # "userId":I
    .end local v3    # "userStats":Ljava/util/Deque;, "Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    .end local v10    # "userSerialNumber":Ljava/lang/String;
    .end local v11    # "bucketStats":[Ljava/lang/String;
    .end local v12    # "localDate":Ljava/time/LocalDate;
    .end local v13    # "bucketBoundaries":[Ljava/lang/String;
    .end local v14    # "parsedBucketBoundaries":[F
    .end local v15    # "parsedBucketStats":[F
    :cond_5
    goto :goto_4

    .line 239
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "userSerialNumber":Ljava/lang/String;
    .restart local v11    # "bucketStats":[Ljava/lang/String;
    .restart local v12    # "localDate":Ljava/time/LocalDate;
    .restart local v13    # "bucketBoundaries":[Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v3

    .line 241
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid brightness stats string."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v0

    .line 231
    .end local v10    # "userSerialNumber":Ljava/lang/String;
    .end local v11    # "bucketStats":[Ljava/lang/String;
    .end local v12    # "localDate":Ljava/time/LocalDate;
    .end local v13    # "bucketBoundaries":[Ljava/lang/String;
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_4

    .line 227
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .line 225
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v3, v17

    const/4 v7, 0x1

    goto/16 :goto_1

    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    move-object/from16 v17, v3

    .line 260
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_5
    iput-object v2, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 264
    .end local v2    # "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    .end local v4    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v8    # "cutOffDate":Ljava/time/LocalDate;
    .end local v9    # "outerDepth":I
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 265
    return-void

    .line 218
    .restart local v2    # "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_a
    move-object/from16 v17, v3

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ambient brightness stats not found in tracker file "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    .end local v2    # "parsedStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    .end local v4    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v17    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse brightness stats file."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 271
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 272
    .local v4, "dayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .end local v4    # "dayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    goto :goto_1

    .line 276
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    :cond_0
    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToXML(Ljava/io/OutputStream;)V
    .locals 14
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 169
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 171
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 173
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v4, 0x7

    invoke-virtual {v1, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    .line 174
    .local v1, "cutOffDate":Ljava/time/LocalDate;
    const-string v2, "ambient-brightness-stats"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-object v4, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 176
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 177
    .local v7, "userDayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    iget-object v8, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v8}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v9}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$100(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v9

    .line 178
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 177
    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v8

    .line 179
    .local v8, "userSerialNumber":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 180
    const-string v9, "ambient-brightness-day-stats"

    invoke-interface {v0, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "user"

    invoke-interface {v0, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    nop

    .line 183
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v10

    .line 182
    const-string/jumbo v11, "local-date"

    invoke-interface {v0, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v10, "bucketBoundariesValues":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v11, "timeSpentValues":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v13

    array-length v13, v13

    if-ge v12, v13, :cond_1

    .line 187
    if-lez v12, :cond_0

    .line 188
    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v13

    aget v13, v13, v12

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getStats()[F

    move-result-object v13

    aget v13, v13, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 194
    .end local v12    # "i":I
    :cond_1
    nop

    .line 195
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 194
    const-string v13, "bucket-boundaries"

    invoke-interface {v0, v3, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "bucket-stats"

    invoke-interface {v0, v3, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {v0, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    .end local v7    # "userDayStats":Landroid/hardware/display/AmbientBrightnessDayStats;
    .end local v8    # "userSerialNumber":I
    .end local v10    # "bucketBoundariesValues":Ljava/lang/StringBuilder;
    .end local v11    # "timeSpentValues":Ljava/lang/StringBuilder;
    :cond_2
    goto/16 :goto_1

    .line 200
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Deque<Landroid/hardware/display/AmbientBrightnessDayStats;>;>;"
    :cond_3
    goto/16 :goto_0

    .line 201
    :cond_4
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 203
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 204
    return-void
.end method

.class Lcom/android/server/people/prediction/ShareTargetPredictor;
.super Lcom/android/server/people/prediction/AppTargetPredictor;
.source "ShareTargetPredictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ShareTargetPredictor"


# instance fields
.field private final mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, "ShareTargetPredictor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V
    .locals 2
    .param p1, "predictionContext"    # Landroid/app/prediction/AppPredictionContext;
    .param p3, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p4, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionContext;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 60
    .local p2, "updatePredictionsMethod":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V

    .line 61
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent_filter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 63
    return-void
.end method

.method private getAppShareTargets(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;"
        }
    .end annotation

    .line 165
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppTarget;

    .line 167
    .local v2, "target":Landroid/app/prediction/AppTarget;
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 167
    invoke-virtual {v3, v4, v5}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v3

    .line 169
    .local v3, "packageData":Lcom/android/server/people/data/PackageData;
    new-instance v4, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 170
    const/4 v5, 0x0

    if-nez v3, :cond_0

    move-object v6, v5

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/people/data/PackageData;->getClassLevelEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v6

    :goto_1
    invoke-direct {v4, v2, v6, v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    .line 169
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v2    # "target":Landroid/app/prediction/AppTarget;
    .end local v3    # "packageData":Lcom/android/server/people/data/PackageData;
    goto :goto_0

    .line 173
    :cond_1
    return-object v0
.end method

.method private getDirectShareTargets()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    nop

    .line 135
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    iget v3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mCallingUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/people/data/DataManager;->getShareShortcuts(Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, "shareShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 138
    .local v3, "shareShortcut":Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 139
    .local v4, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    new-instance v5, Landroid/app/prediction/AppTarget$Builder;

    new-instance v6, Landroid/app/prediction/AppTargetId;

    .line 140
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v4}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V

    .line 142
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v5

    .line 143
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v5

    .line 145
    .local v5, "appTarget":Landroid/app/prediction/AppTarget;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v7

    .line 147
    .local v7, "userId":I
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v8

    .line 149
    .local v8, "packageData":Lcom/android/server/people/data/PackageData;
    const/4 v9, 0x0

    .line 150
    .local v9, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    const/4 v10, 0x0

    .line 151
    .local v10, "eventHistory":Lcom/android/server/people/data/EventHistory;
    if-eqz v8, :cond_0

    .line 152
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "shortcutId":Ljava/lang/String;
    invoke-virtual {v8, v11}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v9

    .line 154
    if-eqz v9, :cond_0

    .line 155
    invoke-virtual {v8, v11}, Lcom/android/server/people/data/PackageData;->getEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v10

    .line 158
    .end local v11    # "shortcutId":Ljava/lang/String;
    :cond_0
    new-instance v11, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-direct {v11, v5, v10, v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v3    # "shareShortcut":Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    .end local v4    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "appTarget":Landroid/app/prediction/AppTarget;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    .end local v8    # "packageData":Lcom/android/server/people/data/PackageData;
    .end local v9    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .end local v10    # "eventHistory":Lcom/android/server/people/data/EventHistory;
    goto :goto_0

    .line 161
    :cond_1
    return-object v0
.end method

.method private getShareEventType(Landroid/content/IntentFilter;)I
    .locals 2
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;

    .line 177
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, "mimeType":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static synthetic lambda$predictTargets$0(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)Ljava/lang/Integer;
    .locals 1
    .param p0, "t"    # Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 93
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getRank()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sortTargets$1(Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;)I
    .locals 2
    .param p0, "t1"    # Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    .param p1, "t2"    # Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    neg-int v0, v0

    return v0
.end method


# virtual methods
.method predictTargets()V
    .locals 5

    .line 81
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "predictTargets"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 85
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->updatePredictions(Ljava/util/List;)V

    .line 86
    return-void

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDirectShareTargets()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, v1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getShareEventType(Landroid/content/IntentFilter;)I

    move-result v1

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 89
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    .line 91
    sget-object v1, Lcom/android/server/people/prediction/-$$Lambda$FysUMXSDl6-hkJQebinV3cvBgrs;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$FysUMXSDl6-hkJQebinV3cvBgrs;

    .line 92
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    sget-object v2, Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$OnvWjVI-0yaE3oXCvW9zplQ6C0U;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$OnvWjVI-0yaE3oXCvW9zplQ6C0U;

    .line 93
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getPredictionContext()Landroid/app/prediction/AppPredictionContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v3

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->updatePredictions(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 69
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "reportAppTargetEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->reportShareTargetEvent(Landroid/app/prediction/AppTargetEvent;Landroid/content/IntentFilter;)V

    .line 75
    :cond_1
    return-void
.end method

.method sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 106
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "ShareTargetPredictor"

    const-string/jumbo v1, "sortTargets"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 110
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 111
    return-void

    .line 113
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getAppShareTargets(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;>;"
    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 115
    invoke-direct {p0, v1}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getShareEventType(Landroid/content/IntentFilter;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getPredictionContext()Landroid/app/prediction/AppPredictionContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v3

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/people/prediction/ShareTargetPredictor;->getDataManager()Lcom/android/server/people/data/DataManager;

    move-result-object v6

    iget v7, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mCallingUserId:I

    .line 114
    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScoreForAppShare(Ljava/util/List;IIJLcom/android/server/people/data/DataManager;I)V

    .line 118
    sget-object v1, Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$_2n8ObVTS8OfzNSVGhI6lPQLEL0;->INSTANCE:Lcom/android/server/people/prediction/-$$Lambda$ShareTargetPredictor$_2n8ObVTS8OfzNSVGhI6lPQLEL0;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, "appTargetList":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 121
    .local v3, "shareTarget":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v4

    .line 122
    .local v4, "appTarget":Landroid/app/prediction/AppTarget;
    new-instance v5, Landroid/app/prediction/AppTarget$Builder;

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getId()Landroid/app/prediction/AppTargetId;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 124
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v5

    .line 125
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_1

    .line 126
    :cond_2
    const/4 v6, 0x0

    .line 125
    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v5

    .line 122
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v3    # "shareTarget":Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
    .end local v4    # "appTarget":Landroid/app/prediction/AppTarget;
    goto :goto_0

    .line 129
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

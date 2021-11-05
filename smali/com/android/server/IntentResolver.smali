.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z = false

.field private static final localVerificationLOGV:Z = false

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field protected final mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 834
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 851
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 858
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 867
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 872
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 878
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 883
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 574
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 575
    .local v0, "array":[Ljava/lang/Object;, "[TF;"
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 576
    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 577
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    aput-object p3, v0, v2

    goto :goto_1

    .line 580
    :cond_0
    array-length v3, v0

    .line 581
    .local v3, "N":I
    move v4, v3

    .line 582
    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v0, v5

    if-nez v5, :cond_1

    .line 583
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 585
    :cond_1
    if-ge v4, v3, :cond_2

    .line 586
    aput-object p3, v0, v4

    goto :goto_1

    .line 588
    :cond_2
    mul-int/lit8 v5, v3, 0x3

    div-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 589
    .local v1, "newa":[Ljava/lang/Object;, "[TF;"
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    aput-object p3, v1, v3

    .line 591
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .end local v1    # "newa":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    :goto_1
    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;I)V
    .locals 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "debug"    # Z
    .param p4, "defaultOnly"    # Z
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;I)V"
        }
    .end annotation

    .line 729
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, "src":[Ljava/lang/Object;, "[TF;"
    .local p8, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 730
    .local v11, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 731
    .local v12, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    .line 733
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v14

    .line 737
    .local v14, "excludingStopped":Z
    const-string v15, "IntentResolver"

    if-eqz p3, :cond_0

    .line 738
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {v4, v5, v15, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 739
    .local v4, "logPrinter":Landroid/util/Printer;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    move-object v10, v4

    move-object v9, v5

    .local v5, "logPrintWriter":Ljava/io/PrintWriter;
    goto :goto_0

    .line 741
    .end local v4    # "logPrinter":Landroid/util/Printer;
    .end local v5    # "logPrintWriter":Ljava/io/PrintWriter;
    :cond_0
    const/4 v4, 0x0

    .line 742
    .restart local v4    # "logPrinter":Landroid/util/Printer;
    const/4 v5, 0x0

    move-object v10, v4

    move-object v9, v5

    .line 745
    .end local v4    # "logPrinter":Landroid/util/Printer;
    .local v9, "logPrintWriter":Ljava/io/PrintWriter;
    .local v10, "logPrinter":Landroid/util/Printer;
    :goto_0
    if-eqz v1, :cond_1

    array-length v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v8, v4

    .line 746
    .local v8, "N":I
    const/4 v4, 0x0

    .line 749
    .local v4, "hasNonDefaults":Z
    const/4 v5, 0x0

    move/from16 v16, v4

    move v7, v5

    .end local v4    # "hasNonDefaults":Z
    .local v7, "i":I
    .local v16, "hasNonDefaults":Z
    :goto_2
    if-ge v7, v8, :cond_18

    aget-object v4, v1, v7

    move-object v6, v4

    .local v6, "filter":Ljava/lang/Object;, "TF;"
    if-eqz v4, :cond_17

    .line 751
    if-eqz p3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matching against filter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_2
    if-eqz v14, :cond_4

    invoke-virtual {v0, v6, v3}, Lcom/android/server/IntentResolver;->isFilterStopped(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 754
    if-eqz p3, :cond_3

    .line 755
    const-string v4, "  Filter\'s target is stopped; skipping"

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v7

    move/from16 v20, v8

    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object v11, v6

    move-object v12, v9

    move-object v14, v10

    goto/16 :goto_7

    .line 754
    :cond_3
    move/from16 v18, v7

    move/from16 v20, v8

    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object v11, v6

    move-object v12, v9

    move-object v14, v10

    goto/16 :goto_7

    .line 761
    :cond_4
    if-eqz v13, :cond_6

    invoke-virtual {v0, v13, v6}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 762
    if-eqz p3, :cond_5

    .line 763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter is not from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v7

    move/from16 v20, v8

    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object v11, v6

    move-object v12, v9

    move-object v14, v10

    goto/16 :goto_7

    .line 762
    :cond_5
    move/from16 v18, v7

    move/from16 v20, v8

    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object v11, v6

    move-object v12, v9

    move-object v14, v10

    goto/16 :goto_7

    .line 769
    :cond_6
    invoke-virtual {v0, v6}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 770
    .local v5, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v5}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 771
    if-eqz p3, :cond_8

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Filter verified: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Lcom/android/server/IntentResolver;->isFilterVerified(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v5}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 774
    .local v1, "authorities":I
    const/4 v4, 0x0

    .local v4, "z":I
    :goto_3
    if-ge v4, v1, :cond_7

    .line 775
    move/from16 v17, v1

    .end local v1    # "authorities":I
    .local v17, "authorities":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v7

    .end local v7    # "i":I
    .local v18, "i":I
    const-string v7, "   "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v7

    .line 776
    invoke-virtual {v7}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v17

    move/from16 v7, v18

    goto :goto_3

    .end local v17    # "authorities":I
    .end local v18    # "i":I
    .restart local v1    # "authorities":I
    .restart local v7    # "i":I
    :cond_7
    move/from16 v17, v1

    move/from16 v18, v7

    .end local v1    # "authorities":I
    .end local v7    # "i":I
    .restart local v17    # "authorities":I
    .restart local v18    # "i":I
    goto :goto_4

    .line 771
    .end local v4    # "z":I
    .end local v17    # "authorities":I
    .end local v18    # "i":I
    .restart local v7    # "i":I
    :cond_8
    move/from16 v18, v7

    .end local v7    # "i":I
    .restart local v18    # "i":I
    goto :goto_4

    .line 770
    .end local v18    # "i":I
    .restart local v7    # "i":I
    :cond_9
    move/from16 v18, v7

    .line 782
    .end local v7    # "i":I
    .restart local v18    # "i":I
    :goto_4
    invoke-virtual {v0, v6, v2}, Lcom/android/server/IntentResolver;->allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 783
    if-eqz p3, :cond_a

    .line 784
    const-string v1, "  Filter\'s target already added"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v8

    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object v11, v6

    move-object v12, v9

    move-object v14, v10

    goto/16 :goto_7

    .line 783
    :cond_a
    move/from16 v20, v8

    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object v11, v6

    move-object v12, v9

    move-object v14, v10

    goto/16 :goto_7

    .line 789
    :cond_b
    const-string v1, "IntentResolver"

    move-object v4, v5

    move-object v7, v5

    .end local v5    # "intentFilter":Landroid/content/IntentFilter;
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    move-object v5, v11

    move-object/from16 v17, v11

    move-object v11, v6

    .end local v6    # "filter":Ljava/lang/Object;, "TF;"
    .local v11, "filter":Ljava/lang/Object;, "TF;"
    .local v17, "action":Ljava/lang/String;
    move-object/from16 v6, p5

    move-object/from16 v19, v13

    move-object v13, v7

    .end local v7    # "intentFilter":Landroid/content/IntentFilter;
    .local v13, "intentFilter":Landroid/content/IntentFilter;
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v7, p6

    move/from16 v20, v8

    .end local v8    # "N":I
    .local v20, "N":I
    move-object v8, v12

    move-object/from16 v21, v12

    move-object v12, v9

    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v21, "data":Landroid/net/Uri;
    move-object/from16 v9, p2

    move/from16 v22, v14

    move-object v14, v10

    .end local v10    # "logPrinter":Landroid/util/Printer;
    .local v14, "logPrinter":Landroid/util/Printer;
    .local v22, "excludingStopped":Z
    move-object v10, v1

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 790
    .local v1, "match":I
    if-ltz v1, :cond_11

    .line 791
    const-string v4, "android.intent.category.DEFAULT"

    if-eqz p3, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter matched!  match=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hasDefault="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 791
    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_c
    if-eqz p4, :cond_e

    invoke-virtual {v13, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_5

    .line 806
    :cond_d
    const/4 v4, 0x1

    move/from16 v16, v4

    .end local v16    # "hasNonDefaults":Z
    .local v4, "hasNonDefaults":Z
    goto :goto_7

    .line 795
    .end local v4    # "hasNonDefaults":Z
    .restart local v16    # "hasNonDefaults":Z
    :cond_e
    :goto_5
    invoke-virtual {v0, v11, v1, v3}, Lcom/android/server/IntentResolver;->newResult(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    .line 796
    .local v4, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz p3, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Created result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_f
    if-eqz v4, :cond_10

    .line 798
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    if-eqz p3, :cond_10

    .line 800
    const-string v5, "    "

    invoke-virtual {v0, v12, v5, v11}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 802
    invoke-virtual {v13, v14, v5}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 805
    .end local v4    # "oneResult":Ljava/lang/Object;, "TR;"
    :cond_10
    goto :goto_7

    .line 809
    :cond_11
    if-eqz p3, :cond_16

    .line 811
    const/4 v4, -0x4

    if-eq v1, v4, :cond_15

    const/4 v4, -0x3

    if-eq v1, v4, :cond_14

    const/4 v4, -0x2

    if-eq v1, v4, :cond_13

    const/4 v4, -0x1

    if-eq v1, v4, :cond_12

    .line 816
    const-string/jumbo v4, "unknown reason"

    .local v4, "reason":Ljava/lang/String;
    goto :goto_6

    .line 815
    .end local v4    # "reason":Ljava/lang/String;
    :cond_12
    const-string/jumbo v4, "type"

    .restart local v4    # "reason":Ljava/lang/String;
    goto :goto_6

    .line 814
    .end local v4    # "reason":Ljava/lang/String;
    :cond_13
    const-string v4, "data"

    .restart local v4    # "reason":Ljava/lang/String;
    goto :goto_6

    .line 812
    .end local v4    # "reason":Ljava/lang/String;
    :cond_14
    const-string v4, "action"

    .restart local v4    # "reason":Ljava/lang/String;
    goto :goto_6

    .line 813
    .end local v4    # "reason":Ljava/lang/String;
    :cond_15
    const-string v4, "category"

    .line 818
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter did not match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v1    # "match":I
    .end local v4    # "reason":Ljava/lang/String;
    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    :cond_16
    :goto_7
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v1, p7

    move-object v9, v12

    move-object v10, v14

    move-object/from16 v11, v17

    move-object/from16 v13, v19

    move/from16 v8, v20

    move-object/from16 v12, v21

    move/from16 v14, v22

    .end local v18    # "i":I
    .local v7, "i":I
    goto/16 :goto_2

    .end local v17    # "action":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "data":Landroid/net/Uri;
    .end local v22    # "excludingStopped":Z
    .restart local v6    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v8    # "N":I
    .restart local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "action":Ljava/lang/String;
    .local v12, "data":Landroid/net/Uri;
    .local v13, "packageName":Ljava/lang/String;
    .local v14, "excludingStopped":Z
    :cond_17
    move/from16 v18, v7

    move/from16 v20, v8

    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object v11, v6

    move-object v12, v9

    move-object v14, v10

    .end local v6    # "filter":Ljava/lang/Object;, "TF;"
    .end local v7    # "i":I
    .end local v8    # "N":I
    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10    # "logPrinter":Landroid/util/Printer;
    .end local v13    # "packageName":Ljava/lang/String;
    .local v11, "filter":Ljava/lang/Object;, "TF;"
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v14, "logPrinter":Landroid/util/Printer;
    .restart local v17    # "action":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "N":I
    .restart local v21    # "data":Landroid/net/Uri;
    .restart local v22    # "excludingStopped":Z
    goto :goto_8

    .end local v17    # "action":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "N":I
    .end local v21    # "data":Landroid/net/Uri;
    .end local v22    # "excludingStopped":Z
    .restart local v7    # "i":I
    .restart local v8    # "N":I
    .restart local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .restart local v10    # "logPrinter":Landroid/util/Printer;
    .local v11, "action":Ljava/lang/String;
    .local v12, "data":Landroid/net/Uri;
    .restart local v13    # "packageName":Ljava/lang/String;
    .local v14, "excludingStopped":Z
    :cond_18
    move/from16 v18, v7

    move/from16 v20, v8

    move-object/from16 v17, v11

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    move/from16 v22, v14

    move-object v12, v9

    move-object v14, v10

    .line 823
    .end local v7    # "i":I
    .end local v8    # "N":I
    .end local v9    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v10    # "logPrinter":Landroid/util/Printer;
    .end local v11    # "action":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .local v12, "logPrintWriter":Ljava/io/PrintWriter;
    .local v14, "logPrinter":Landroid/util/Printer;
    .restart local v17    # "action":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "N":I
    .restart local v21    # "data":Landroid/net/Uri;
    .restart local v22    # "excludingStopped":Z
    :goto_8
    if-eqz p3, :cond_1a

    if-eqz v16, :cond_1a

    .line 824
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    .line 825
    const-string/jumbo v1, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 826
    :cond_19
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_1a

    .line 827
    const-string/jumbo v1, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_1a
    :goto_9
    return-void
.end method

.method private collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .param p2, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TF;"
    const/4 v0, 0x0

    .line 152
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    if-eqz p1, :cond_3

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 154
    aget-object v2, p1, v1

    .line 155
    .local v2, "cur":Ljava/lang/Object;, "TF;"
    if-nez v2, :cond_0

    .line 156
    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    if-nez v0, :cond_1

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 162
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v2    # "cur":Ljava/lang/Object;, "TF;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 5
    .param p0, "f1"    # Landroid/content/IntentFilter;
    .param p1, "f2"    # Landroid/content/IntentFilter;

    .line 77
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 78
    .local v0, "s1":I
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 79
    .local v1, "s2":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 80
    return v2

    .line 82
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 83
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 84
    return v2

    .line 82
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 88
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 89
    if-eq v0, v1, :cond_3

    .line 90
    return v2

    .line 92
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 93
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 94
    return v2

    .line 92
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 99
    if-eq v0, v1, :cond_6

    .line 100
    return v2

    .line 102
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_8

    .line 103
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 104
    return v2

    .line 102
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 107
    .end local v3    # "i":I
    :cond_8
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 109
    if-eq v0, v1, :cond_9

    .line 110
    return v2

    .line 112
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v0, :cond_b

    .line 113
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 114
    return v2

    .line 112
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 117
    .end local v3    # "i":I
    :cond_b
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v0

    .line 118
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 119
    if-eq v0, v1, :cond_c

    .line 120
    return v2

    .line 122
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_e

    .line 123
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 124
    return v2

    .line 122
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 127
    .end local v3    # "i":I
    :cond_e
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v0

    .line 128
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 129
    if-eq v0, v1, :cond_f

    .line 130
    return v2

    .line 132
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v0, :cond_11

    .line 133
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 134
    return v2

    .line 132
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 137
    .end local v3    # "i":I
    :cond_11
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 139
    if-eq v0, v1, :cond_12

    .line 140
    return v2

    .line 142
    :cond_12
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v0, :cond_14

    .line 143
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 144
    return v2

    .line 142
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 147
    .end local v3    # "i":I
    :cond_14
    const/4 v2, 0x1

    return v2
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 719
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 720
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 721
    const/4 v1, 0x0

    return-object v1

    .line 723
    :cond_0
    new-instance v1, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method

.method private final register_mime_types(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 597
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 598
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 599
    return v1

    .line 602
    :cond_0
    const/4 v2, 0x0

    .line 603
    .local v2, "num":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 604
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 605
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 607
    move-object v4, v3

    .line 608
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 609
    .local v5, "slashpos":I
    if-lez v5, :cond_1

    .line 610
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 612
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    :goto_1
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    if-lez v5, :cond_2

    .line 618
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 620
    :cond_2
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :goto_2
    goto :goto_0

    .line 624
    :cond_3
    return v2
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 691
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "object":Ljava/lang/Object;, "TF;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 692
    .local v0, "array":[Ljava/lang/Object;, "[TF;"
    if-eqz v0, :cond_5

    .line 693
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 694
    .local v1, "LAST":I
    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 695
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 697
    :cond_0
    move v2, v1

    .local v2, "idx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 698
    aget-object v3, v0, v2

    .line 699
    .local v3, "arrayValue":Ljava/lang/Object;, "TF;"
    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {p0, p3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 700
    sub-int v4, v1, v2

    .line 701
    .local v4, "remain":I
    if-lez v4, :cond_1

    .line 702
    add-int/lit8 v5, v2, 0x1

    invoke-static {v0, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    :cond_1
    const/4 v5, 0x0

    aput-object v5, v0, v1

    .line 705
    add-int/lit8 v1, v1, -0x1

    .line 697
    .end local v3    # "arrayValue":Ljava/lang/Object;, "TF;"
    .end local v4    # "remain":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 708
    .end local v2    # "idx":I
    :cond_3
    if-gez v1, :cond_4

    .line 709
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 710
    :cond_4
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5

    .line 711
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 712
    .local v2, "newa":[Ljava/lang/Object;, "[TF;"
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    .end local v1    # "LAST":I
    .end local v2    # "newa":[Ljava/lang/Object;, "[TF;"
    :cond_5
    :goto_2
    return-void
.end method

.method private final unregister_mime_types(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 628
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 629
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 630
    return v1

    .line 633
    :cond_0
    const/4 v2, 0x0

    .line 634
    .local v2, "num":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 636
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 638
    move-object v4, v3

    .line 639
    .local v4, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 640
    .local v5, "slashpos":I
    if-lez v5, :cond_1

    .line 641
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 643
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    :goto_1
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    if-lez v5, :cond_2

    .line 649
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 651
    :cond_2
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v6, v4, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "baseName":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :goto_2
    goto :goto_0

    .line 654
    :cond_3
    return v2
.end method


# virtual methods
.method public addFilter(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 62
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Scheme: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "numS":I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->register_mime_types(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, "numT":I
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v5, "      Action: "

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 70
    :cond_0
    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v5, "      TypedAction: "

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 74
    :cond_1
    return-void
.end method

.method protected allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    .line 508
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 15
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "printFilter"    # Z
    .param p6, "collapseDuplicates"    # Z

    .line 313
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    move-object v9, p0

    move-object/from16 v10, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, "innerPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 315
    .local v12, "sepPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 316
    .local v14, "curPrefix":Ljava/lang/String;
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Full MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    move-object v14, v12

    .line 320
    :cond_0
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Base MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    move-object v14, v12

    .line 324
    :cond_1
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Wild MIME Types:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    move-object v14, v12

    .line 328
    :cond_2
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "Schemes:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    move-object v14, v12

    .line 332
    :cond_3
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "Non-Data Actions:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    move-object v14, v12

    .line 336
    :cond_4
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "MIME Typed Actions:"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v11

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 338
    move-object v14, v12

    .line 340
    :cond_5
    if-ne v14, v12, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 301
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 302
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000001L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 303
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000002L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 304
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000003L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 305
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000004L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 306
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000005L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 307
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-wide v3, 0x20b00000006L

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/IntentResolver;->writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 309
    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 562
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 563
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 570
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 571
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .locals 22
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "titlePrefix"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "printFilter"    # Z
    .param p8, "collapseDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    .line 223
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "eprefix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "fprefix":Ljava/lang/String;
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 226
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    const/4 v9, 0x0

    .line 227
    .local v9, "printedSomething":Z
    const/4 v10, 0x0

    .line 228
    .local v10, "printer":Landroid/util/Printer;
    const/4 v11, 0x0

    move v12, v11

    move-object v11, v10

    move v10, v9

    move-object/from16 v9, p3

    .end local p3    # "title":Ljava/lang/String;
    .local v9, "title":Ljava/lang/String;
    .local v10, "printedSomething":Z
    .local v11, "printer":Landroid/util/Printer;
    .local v12, "mapi":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v12, v13, :cond_11

    .line 229
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    .line 230
    .local v13, "a":[Ljava/lang/Object;, "[TF;"
    array-length v14, v13

    .line 231
    .local v14, "N":I
    const/4 v15, 0x0

    .line 233
    .local v15, "printedHeader":Z
    const-string v2, ":"

    if-eqz p8, :cond_8

    if-nez p7, :cond_8

    .line 234
    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 235
    const/16 v16, 0x0

    move-object/from16 p3, v9

    move/from16 v9, v16

    .local v9, "i":I
    .restart local p3    # "title":Ljava/lang/String;
    :goto_1
    if-ge v9, v14, :cond_4

    aget-object v16, v13, v9

    move-object/from16 v17, v16

    .local v17, "filter":Ljava/lang/Object;, "TF;"
    if-eqz v16, :cond_3

    .line 236
    if-eqz v4, :cond_0

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    .end local v17    # "filter":Ljava/lang/Object;, "TF;"
    .local v11, "filter":Ljava/lang/Object;, "TF;"
    .local v16, "printer":Landroid/util/Printer;
    invoke-virtual {v0, v4, v11}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 237
    move-object/from16 v20, v6

    move/from16 v19, v10

    move-object/from16 v18, v11

    move/from16 v17, v15

    goto :goto_2

    .line 236
    .end local v16    # "printer":Landroid/util/Printer;
    .local v11, "printer":Landroid/util/Printer;
    .restart local v17    # "filter":Ljava/lang/Object;, "TF;"
    :cond_0
    move-object/from16 v16, v11

    move-object/from16 v11, v17

    .line 239
    .end local v17    # "filter":Ljava/lang/Object;, "TF;"
    .local v11, "filter":Ljava/lang/Object;, "TF;"
    .restart local v16    # "printer":Landroid/util/Printer;
    :cond_1
    move/from16 v17, v15

    .end local v15    # "printedHeader":Z
    .local v17, "printedHeader":Z
    invoke-virtual {v0, v11}, Lcom/android/server/IntentResolver;->filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 240
    .local v15, "label":Ljava/lang/Object;
    move-object/from16 v18, v11

    .end local v11    # "filter":Ljava/lang/Object;, "TF;"
    .local v18, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 241
    .local v11, "index":I
    move/from16 v19, v10

    .end local v10    # "printedSomething":Z
    .local v19, "printedSomething":Z
    const/4 v10, 0x1

    if-gez v11, :cond_2

    .line 242
    move-object/from16 v20, v6

    new-instance v6, Landroid/util/MutableInt;

    invoke-direct {v6, v10}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v8, v15, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 244
    :cond_2
    move-object/from16 v20, v6

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/MutableInt;

    move/from16 v21, v11

    .end local v11    # "index":I
    .local v21, "index":I
    iget v11, v6, Landroid/util/MutableInt;->value:I

    add-int/2addr v11, v10

    iput v11, v6, Landroid/util/MutableInt;->value:I

    .line 235
    .end local v15    # "label":Ljava/lang/Object;
    .end local v21    # "index":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v16

    move/from16 v15, v17

    move/from16 v10, v19

    move-object/from16 v6, v20

    goto :goto_1

    .end local v16    # "printer":Landroid/util/Printer;
    .end local v18    # "filter":Ljava/lang/Object;, "TF;"
    .end local v19    # "printedSomething":Z
    .restart local v10    # "printedSomething":Z
    .local v11, "printer":Landroid/util/Printer;
    .local v15, "printedHeader":Z
    .local v17, "filter":Ljava/lang/Object;, "TF;"
    :cond_3
    move-object/from16 v20, v6

    move/from16 v19, v10

    move-object/from16 v16, v11

    move-object/from16 v18, v17

    move/from16 v17, v15

    .end local v10    # "printedSomething":Z
    .end local v11    # "printer":Landroid/util/Printer;
    .end local v15    # "printedHeader":Z
    .restart local v16    # "printer":Landroid/util/Printer;
    .local v17, "printedHeader":Z
    .restart local v18    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v19    # "printedSomething":Z
    goto :goto_3

    .end local v16    # "printer":Landroid/util/Printer;
    .end local v17    # "printedHeader":Z
    .end local v18    # "filter":Ljava/lang/Object;, "TF;"
    .end local v19    # "printedSomething":Z
    .restart local v10    # "printedSomething":Z
    .restart local v11    # "printer":Landroid/util/Printer;
    .restart local v15    # "printedHeader":Z
    :cond_4
    move-object/from16 v20, v6

    move/from16 v19, v10

    move-object/from16 v16, v11

    move/from16 v17, v15

    .line 247
    .end local v9    # "i":I
    .end local v10    # "printedSomething":Z
    .end local v11    # "printer":Landroid/util/Printer;
    .end local v15    # "printedHeader":Z
    .restart local v16    # "printer":Landroid/util/Printer;
    .restart local v17    # "printedHeader":Z
    .restart local v19    # "printedSomething":Z
    :goto_3
    const/4 v6, 0x0

    move-object/from16 v9, p3

    move/from16 v15, v17

    move/from16 v10, v19

    .end local v17    # "printedHeader":Z
    .end local v19    # "printedSomething":Z
    .end local p3    # "title":Ljava/lang/String;
    .local v6, "i":I
    .local v9, "title":Ljava/lang/String;
    .restart local v10    # "printedSomething":Z
    .restart local v15    # "printedHeader":Z
    :goto_4
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 248
    if-eqz v9, :cond_5

    .line 249
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const/4 v9, 0x0

    .line 252
    :cond_5
    if-nez v15, :cond_6

    .line 253
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const/4 v11, 0x1

    move v15, v11

    .line 256
    :cond_6
    const/4 v10, 0x1

    .line 257
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v8

    .end local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .local v18, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    move-object/from16 v8, v17

    check-cast v8, Landroid/util/MutableInt;

    iget v8, v8, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v7, v11, v8}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 247
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v18

    goto :goto_4

    .end local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    :cond_7
    move-object/from16 v18, v8

    .end local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    move-object/from16 v11, v16

    move-object/from16 v1, v20

    .end local v6    # "i":I
    goto/16 :goto_7

    .line 233
    .end local v16    # "printer":Landroid/util/Printer;
    .end local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v11    # "printer":Landroid/util/Printer;
    :cond_8
    move-object/from16 v20, v6

    move-object/from16 v18, v8

    move-object/from16 p3, v9

    move/from16 v19, v10

    move-object/from16 v16, v11

    move/from16 v17, v15

    .line 260
    .end local v8    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "printedSomething":Z
    .end local v11    # "printer":Landroid/util/Printer;
    .end local v15    # "printedHeader":Z
    .restart local v16    # "printer":Landroid/util/Printer;
    .restart local v17    # "printedHeader":Z
    .restart local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .restart local v19    # "printedSomething":Z
    .restart local p3    # "title":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v9, p3

    move-object/from16 v11, v16

    move/from16 v15, v17

    move/from16 v10, v19

    .end local v16    # "printer":Landroid/util/Printer;
    .end local v17    # "printedHeader":Z
    .end local v19    # "printedSomething":Z
    .end local p3    # "title":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v9    # "title":Ljava/lang/String;
    .restart local v10    # "printedSomething":Z
    .restart local v11    # "printer":Landroid/util/Printer;
    .restart local v15    # "printedHeader":Z
    :goto_5
    if-ge v6, v14, :cond_10

    aget-object v8, v13, v6

    move-object/from16 p3, v8

    .local p3, "filter":Ljava/lang/Object;, "TF;"
    if-eqz v8, :cond_f

    .line 261
    if-eqz v4, :cond_9

    move-object/from16 v8, p3

    .end local p3    # "filter":Ljava/lang/Object;, "TF;"
    .local v8, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {v0, v4, v8}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 262
    move-object/from16 v1, v20

    goto :goto_6

    .line 261
    .end local v8    # "filter":Ljava/lang/Object;, "TF;"
    .restart local p3    # "filter":Ljava/lang/Object;, "TF;"
    :cond_9
    move-object/from16 v8, p3

    .line 264
    .end local p3    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v8    # "filter":Ljava/lang/Object;, "TF;"
    :cond_a
    if-eqz v9, :cond_b

    .line 265
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const/4 v9, 0x0

    .line 268
    :cond_b
    if-nez v15, :cond_c

    .line 269
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    const/4 v15, 0x1

    .line 272
    :cond_c
    const/4 v3, 0x1

    .line 273
    .end local v10    # "printedSomething":Z
    .local v3, "printedSomething":Z
    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    if-eqz p7, :cond_e

    .line 275
    if-nez v11, :cond_d

    .line 276
    new-instance v10, Landroid/util/PrintWriterPrinter;

    invoke-direct {v10, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move-object v11, v10

    .line 278
    :cond_d
    invoke-virtual {v0, v8}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    move v10, v3

    goto :goto_6

    .line 274
    :cond_e
    move-object/from16 v1, v20

    move v10, v3

    .line 260
    .end local v3    # "printedSomething":Z
    .restart local v10    # "printedSomething":Z
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    goto :goto_5

    .end local v8    # "filter":Ljava/lang/Object;, "TF;"
    .restart local p3    # "filter":Ljava/lang/Object;, "TF;"
    :cond_f
    move-object/from16 v8, p3

    move-object/from16 v1, v20

    .end local p3    # "filter":Ljava/lang/Object;, "TF;"
    .restart local v8    # "filter":Ljava/lang/Object;, "TF;"
    goto :goto_7

    .end local v8    # "filter":Ljava/lang/Object;, "TF;"
    :cond_10
    move-object/from16 v1, v20

    .line 228
    .end local v6    # "i":I
    .end local v13    # "a":[Ljava/lang/Object;, "[TF;"
    .end local v14    # "N":I
    .end local v15    # "printedHeader":Z
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v6, v1

    move-object/from16 v8, v18

    move-object/from16 v1, p1

    goto/16 :goto_0

    .end local v18    # "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    :cond_11
    move/from16 v19, v10

    .line 283
    .end local v10    # "printedSomething":Z
    .end local v12    # "mapi":I
    .restart local v19    # "printedSomething":Z
    return v19
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected filterResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 559
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 566
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    const-string v0, "IntentFilter"

    return-object v0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 176
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_2

    .line 177
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 181
    :cond_2
    const/4 v0, 0x0

    .line 182
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, "cur":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 184
    if-nez v0, :cond_3

    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 187
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v2    # "cur":Ljava/lang/Object;, "TF;"
    :cond_4
    goto :goto_0

    .line 190
    :cond_5
    return-object v0
.end method

.method protected abstract getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation
.end method

.method protected isFilterStopped(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isFilterVerified(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 533
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->isVerified()Z

    move-result v0

    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .param p2, "match"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 405
    .local v12, "scheme":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 407
    .local v13, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v14, v0

    .line 410
    .local v14, "debug":Z
    const-string v15, "IntentResolver"

    if-eqz v14, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " defaultOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v8, p4

    .line 414
    :goto_1
    const/4 v0, 0x0

    .line 415
    .local v0, "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    const/4 v2, 0x0

    .line 416
    .local v2, "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    const/4 v3, 0x0

    .line 417
    .local v3, "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    const/4 v4, 0x0

    .line 421
    .local v4, "schemeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v11, :cond_a

    .line 422
    const/16 v5, 0x2f

    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 423
    .local v5, "slashpos":I
    if-lez v5, :cond_9

    .line 424
    invoke-virtual {v11, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "baseType":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 426
    move-object/from16 v16, v0

    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .local v16, "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v17, v2

    .end local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .local v17, "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    add-int/lit8 v2, v5, 0x2

    move-object/from16 v18, v3

    .end local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .local v18, "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    const-string v3, "Second type cut: "

    move-object/from16 v19, v4

    .end local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .local v19, "schemeCut":[Ljava/lang/Object;, "[TF;"
    const-string v4, "First type cut: "

    if-ne v0, v2, :cond_4

    add-int/lit8 v0, v5, 0x1

    .line 427
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_2

    goto :goto_2

    .line 437
    :cond_2
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 438
    .end local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v14, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_3
    iget-object v2, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 440
    .end local v17    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v14, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 430
    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v17    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    :cond_4
    :goto_2
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 431
    .end local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v14, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_5
    iget-object v2, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 433
    .end local v17    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v14, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_6
    :goto_3
    iget-object v3, v10, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 446
    .end local v18    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v14, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Third type cut: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v1    # "baseType":Ljava/lang/String;
    .end local v5    # "slashpos":I
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_5

    .line 447
    .end local v19    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v1    # "baseType":Ljava/lang/String;
    .restart local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v5    # "slashpos":I
    :cond_8
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v17    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v18    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v19    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 451
    iget-object v0, v10, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 452
    .end local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v14, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typed Action list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 423
    .end local v1    # "baseType":Ljava/lang/String;
    .end local v17    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v18    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v19    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    :cond_9
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v17    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v18    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v19    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    goto :goto_4

    .line 421
    .end local v5    # "slashpos":I
    .end local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v17    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v18    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v19    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    :cond_a
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 460
    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v2    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v3    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .end local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v17    # "secondTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v18    # "thirdTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v19    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    :cond_b
    :goto_4
    move-object/from16 v0, v16

    .end local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    :cond_c
    :goto_5
    if-eqz v12, :cond_e

    .line 461
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    .line 462
    .end local v19    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    if-eqz v14, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheme list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_d
    move-object/from16 v19, v4

    .end local v4    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v19    # "schemeCut":[Ljava/lang/Object;, "[TF;"
    :cond_e
    if-nez v11, :cond_f

    if-nez v12, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 469
    iget-object v1, v10, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 470
    if-eqz v14, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_f
    move-object/from16 v16, v0

    .end local v0    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    .restart local v16    # "firstTypeCut":[Ljava/lang/Object;, "[TF;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v20

    .line 474
    .local v20, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v16, :cond_10

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;I)V

    .line 478
    :cond_10
    if-eqz v17, :cond_11

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v17

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;I)V

    .line 482
    :cond_11
    if-eqz v18, :cond_12

    .line 483
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v18

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;I)V

    .line 486
    :cond_12
    if-eqz v19, :cond_13

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v19

    move-object v8, v13

    move/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;I)V

    .line 490
    :cond_13
    invoke-virtual {v10, v13}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 491
    invoke-virtual {v10, v13}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 493
    if-eqz v14, :cond_14

    .line 494
    const-string v0, "Final result list:"

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 499
    .end local v0    # "i":I
    :cond_14
    return-object v13
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;I)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    move-object/from16 v10, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 386
    .local v11, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    nop

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 389
    .local v3, "debug":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v12

    .line 390
    .local v12, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 391
    .local v13, "scheme":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 392
    .local v14, "N":I
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_1
    if-ge v15, v14, :cond_1

    .line 393
    nop

    .line 394
    move-object/from16 v9, p4

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v8, v11

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;I)V

    .line 392
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 396
    .end local v15    # "i":I
    :cond_1
    invoke-virtual {v10, v11}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 397
    invoke-virtual {v10, v11}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 398
    return-object v11
.end method

.method protected final register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 2
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 659
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_0

    .line 660
    const/4 v0, 0x0

    return v0

    .line 663
    :cond_0
    const/4 v0, 0x0

    .line 664
    .local v0, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 666
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 668
    invoke-direct {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 670
    :cond_1
    return v0
.end method

.method public removeFilter(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method protected removeFilterInternal(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 207
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Scheme: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, "numS":I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->unregister_mime_types(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, "numT":I
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v5, "      Action: "

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 214
    :cond_0
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v5, "      TypedAction: "

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 218
    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 552
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 553
    return-void
.end method

.method protected final unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 2
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 675
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Ljava/lang/Object;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_0

    .line 676
    const/4 v0, 0x0

    return v0

    .line 679
    :cond_0
    const/4 v0, 0x0

    .line 680
    .local v0, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 682
    .local v1, "name":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 684
    invoke-direct {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 686
    :cond_1
    return v0
.end method

.method writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .locals 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;)V"
        }
    .end annotation

    .line 287
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 288
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "mapi":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 289
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 290
    .local v2, "token":J
    const-wide v4, 0x10900000001L

    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 291
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 292
    .local v7, "f":Ljava/lang/Object;, "TF;"
    if-eqz v7, :cond_0

    .line 293
    const-wide v8, 0x20900000002L

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 291
    .end local v7    # "f":Ljava/lang/Object;, "TF;"
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 288
    .end local v2    # "token":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "mapi":I
    :cond_2
    return-void
.end method

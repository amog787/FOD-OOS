.class public final Lcom/android/server/autofill/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/Helper$ViewNodeFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillHelper"

.field public static sDebug:Z

.field public static sFullScreenMode:Ljava/lang/Boolean;

.field public static sVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 60
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "autofillableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/assist/AssistStructure$ViewNode;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;Z)V"
        }
    .end annotation

    .line 227
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v0

    .line 231
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 232
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v2

    .line 233
    .local v2, "child":Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v2, p1, p2}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    .line 231
    .end local v2    # "child":Landroid/app/assist/AssistStructure$ViewNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 5
    .param p0, "structure"    # Landroid/app/assist/AssistStructure;
    .param p1, "filter"    # Lcom/android/server/autofill/Helper$ViewNodeFilter;

    .line 151
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 152
    .local v0, "nodesToProcess":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/app/assist/AssistStructure$ViewNode;>;"
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v1

    .line 153
    .local v1, "numWindowNodes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 154
    invoke-virtual {p0, v2}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/assist/AssistStructure$ViewNode;

    .line 158
    .local v2, "node":Landroid/app/assist/AssistStructure$ViewNode;
    invoke-interface {p1, v2}, Lcom/android/server/autofill/Helper$ViewNodeFilter;->matches(Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    return-object v2

    .line 161
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 162
    invoke-virtual {v2, v3}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 164
    .end local v2    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 166
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public static findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1
    .param p0, "structure"    # Landroid/app/assist/AssistStructure;
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 144
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Helper$nK3g_oXXf8NGajcUf0W5JsQzf3w;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/-$$Lambda$Helper$nK3g_oXXf8NGajcUf0W5JsQzf3w;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    return-object v0
.end method

.method static getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;
    .locals 5
    .param p0, "structure"    # Landroid/app/assist/AssistStructure;
    .param p1, "autofillableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/assist/AssistStructure;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v1

    .line 218
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 219
    invoke-virtual {p0, v2}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v3

    .line 220
    .local v3, "node":Landroid/app/assist/AssistStructure$WindowNode;
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-static {v4, v0, p1}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    .line 218
    .end local v3    # "node":Landroid/app/assist/AssistStructure$WindowNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method static getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;
    .locals 7
    .param p0, "dataset"    # Landroid/service/autofill/Dataset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/Dataset;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 95
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 97
    .local v2, "size":I
    :goto_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 98
    .local v3, "fields":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 99
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    .end local v4    # "i":I
    :cond_1
    return-object v3
.end method

.method static getNumericValue(Landroid/metrics/LogMaker;I)I
    .locals 2
    .param p0, "log"    # Landroid/metrics/LogMaker;
    .param p1, "tag"    # I

    .line 202
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_0

    .line 204
    const/4 v1, 0x0

    return v1

    .line 206
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method static synthetic lambda$findViewNodeByAutofillId$0(Landroid/view/autofill/AutofillId;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .locals 1
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p1, "node"    # Landroid/app/assist/AssistStructure$ViewNode;

    .line 145
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sanitizeUrlBar$1([Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .locals 1
    .param p0, "urlBarIds"    # [Ljava/lang/String;
    .param p1, "node"    # Landroid/app/assist/AssistStructure$ViewNode;

    .line 181
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .locals 1
    .param p0, "category"    # I
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "servicePackageName"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "compatMode"    # Z

    .line 126
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method private static newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;
    .locals 3
    .param p0, "category"    # I
    .param p1, "servicePackageName"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "compatMode"    # Z

    .line 107
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 108
    const/16 v1, 0x38c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 109
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b0

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 110
    .local v0, "log":Landroid/metrics/LogMaker;
    if-eqz p3, :cond_0

    .line 111
    const/16 v1, 0x586

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 113
    :cond_0
    return-object v0
.end method

.method public static newLogMaker(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .locals 1
    .param p0, "category"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "servicePackageName"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "compatMode"    # Z

    .line 119
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public static paramsToString(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 131
    if-nez p1, :cond_0

    .line 132
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "_chars"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void
.end method

.method public static sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 5
    .param p0, "structure"    # Landroid/app/assist/AssistStructure;
    .param p1, "urlBarIds"    # [Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Helper$laLKWmsGqkFIaRXW5rR6_s66Vsw;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/-$$Lambda$Helper$laLKWmsGqkFIaRXW5rR6_s66Vsw;-><init>([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    .line 183
    .local v0, "urlBarNode":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "AutofillHelper"

    if-eqz v2, :cond_1

    .line 186
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sanitizeUrlBar(): empty on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 189
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->setWebDomain(Ljava/lang/String;)V

    .line 190
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sanitizeUrlBar(): id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", domain="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v1    # "domain":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method static toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[",
            "Landroid/view/autofill/AutofillId;"
        }
    .end annotation

    .line 76
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    .line 79
    .local v0, "array":[Landroid/view/autofill/AutofillId;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 80
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    aput-object v2, v0, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.class public final Lcom/android/server/autofill/ui/InlineFillUi;
.super Ljava/lang/Object;
.source "InlineFillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;,
        Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InlineFillUi"


# instance fields
.field final mAutofillId:Landroid/view/autofill/AutofillId;

.field private final mDatasets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterMatchingDisabled:Z

.field private mFilterText:Ljava/lang/String;

.field private final mInlineSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillId;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 5
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p3, "filterText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/Dataset;",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 147
    .local p2, "inlineSuggestions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 149
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 150
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 153
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 154
    .local v2, "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;"
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/autofill/Dataset;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v2    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "i":I
    :cond_0
    iput-object p3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 158
    return-void
.end method

.method constructor <init>(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestion;Ljava/lang/String;)V
    .locals 1
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p2, "inlineSuggestion"    # Landroid/view/inputmethod/InlineSuggestion;
    .param p3, "filterText"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iput-object p3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 167
    return-void
.end method

.method private copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 4
    .param p1, "index"    # I
    .param p2, "inlineSuggestion"    # Landroid/view/inputmethod/InlineSuggestion;

    .line 227
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getContentProvider()Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v0

    .line 228
    .local v0, "contentProvider":Lcom/android/internal/view/inline/IInlineContentProvider;
    instance-of v1, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Landroid/view/inputmethod/InlineSuggestion;

    .line 233
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->copy()Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 238
    .local v1, "newInlineSuggestion":Landroid/view/inputmethod/InlineSuggestion;
    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-object v1

    .line 241
    .end local v1    # "newInlineSuggestion":Landroid/view/inputmethod/InlineSuggestion;
    :cond_0
    return-object p2
.end method

.method public static emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;
    .locals 3
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 96
    new-instance v0, Lcom/android/server/autofill/ui/InlineFillUi;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forAugmentedAutofill(Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Lcom/android/server/autofill/ui/InlineFillUi;
    .locals 8
    .param p0, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p2, "focusedViewId"    # Landroid/view/autofill/AutofillId;
    .param p3, "filterText"    # Ljava/lang/String;
    .param p4, "uiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    .param p5, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p6, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p7, "userId"    # I
    .param p8, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/lang/String;",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "II)",
            "Lcom/android/server/autofill/ui/InlineFillUi;"
        }
    .end annotation

    .line 138
    .local p1, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    nop

    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createAugmentedAutofillInlineSuggestions(Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Landroid/util/SparseArray;

    move-result-object v0

    .line 142
    .local v0, "inlineSuggestions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi;

    move-object v3, p3

    invoke-direct {v1, p2, v0, p3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-object v1
.end method

.method public static forAutofill(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Lcom/android/server/autofill/ui/InlineFillUi;
    .locals 11
    .param p0, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "focusedViewId"    # Landroid/view/autofill/AutofillId;
    .param p3, "filterText"    # Ljava/lang/String;
    .param p4, "uiCallback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p5, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p6, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p7, "userId"    # I
    .param p8, "sessionId"    # I

    .line 111
    move-object v9, p2

    move-object v10, p3

    invoke-static {p1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->responseNeedAuthentication(Landroid/service/autofill/FillResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    nop

    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineAuthentication(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v0

    .line 115
    .local v0, "inlineAuthentication":Landroid/view/inputmethod/InlineSuggestion;
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v1, p2, v0, p3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestion;Ljava/lang/String;)V

    return-object v1

    .line 116
    .end local v0    # "inlineAuthentication":Landroid/view/inputmethod/InlineSuggestion;
    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    nop

    .line 119
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    .line 120
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    .line 118
    move-object v0, p0

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createAutofillInlineSuggestions(Landroid/view/inputmethod/InlineSuggestionsRequest;ILjava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Landroid/util/SparseArray;

    move-result-object v0

    .line 122
    .local v0, "inlineSuggestions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v1, p2, v0, p3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-object v1

    .line 124
    .end local v0    # "inlineSuggestions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    :cond_1
    new-instance v0, Lcom/android/server/autofill/ui/InlineFillUi;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v0, p2, v1, p3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-object v0
.end method

.method private includeDataset(Landroid/service/autofill/Dataset;I)Z
    .locals 6
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "fieldIndex"    # I

    .line 247
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 248
    return v1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "constraintLowerCase":Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v2

    .line 255
    .local v2, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 256
    iget-object v1, v2, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 257
    .local v1, "filterPattern":Ljava/util/regex/Pattern;
    if-nez v1, :cond_2

    .line 258
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Explicitly disabling filter for dataset id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InlineFillUi"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    return v3

    .line 263
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    if-eqz v4, :cond_3

    .line 264
    return v3

    .line 266
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3

    .line 269
    .end local v1    # "filterPattern":Ljava/util/regex/Pattern;
    :cond_4
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 270
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 273
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    if-eqz v1, :cond_6

    .line 274
    return v3

    .line 276
    :cond_6
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "valueText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 271
    .end local v1    # "valueText":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    move v1, v3

    :goto_1
    return v1
.end method


# virtual methods
.method public disableFilterMatching()V
    .locals 1

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    .line 286
    return-void
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getInlineSuggestionsResponse()Landroid/view/inputmethod/InlineSuggestionsResponse;
    .locals 8

    .line 183
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 185
    new-instance v1, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object v1

    .line 187
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v1, "inlineSuggestions":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InlineSuggestion;>;"
    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v0, :cond_1

    goto :goto_2

    .line 195
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 196
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/Dataset;

    .line 197
    .local v3, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 198
    .local v4, "fieldIndex":I
    const-string v5, "InlineFillUi"

    if-gez v4, :cond_2

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutofillId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not found in dataset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {v3, v4}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    .line 204
    .local v6, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    if-nez v6, :cond_3

    .line 205
    const-string v7, "InlinePresentation not found in dataset"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {v6}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v5

    if-nez v5, :cond_4

    .line 209
    invoke-direct {p0, v3, v4}, Lcom/android/server/autofill/ui/InlineFillUi;->includeDataset(Landroid/service/autofill/Dataset;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 210
    goto :goto_1

    .line 212
    :cond_4
    iget-object v5, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InlineSuggestion;

    invoke-direct {p0, v2, v5}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v3    # "dataset":Landroid/service/autofill/Dataset;
    .end local v4    # "fieldIndex":I
    .end local v6    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_5
    new-instance v2, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {v2, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object v2

    .line 190
    :cond_6
    :goto_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_7

    .line 191
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InlineSuggestion;

    invoke-direct {p0, v2, v3}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 193
    .end local v2    # "i":I
    :cond_7
    new-instance v2, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {v2, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterText"    # Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 176
    return-void
.end method

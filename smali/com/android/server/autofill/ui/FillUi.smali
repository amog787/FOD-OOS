.class final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;,
        Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;,
        Lcom/android/server/autofill/ui/FillUi$ViewItem;,
        Lcom/android/server/autofill/ui/FillUi$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FillUi"

.field private static final THEME_ID_DARK:I = 0x10303df

.field private static final THEME_ID_LIGHT:I = 0x10303e9

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field private final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field private mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field private final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFilterText:Ljava/lang/String;

.field private final mFooter:Landroid/view/View;

.field private final mFullScreen:Z

.field private final mHeader:Landroid/view/View;

.field private final mListView:Landroid/widget/ListView;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mThemeId:I

.field private final mVisibleDatasetsMaxCount:I

.field private final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field private final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLcom/android/server/autofill/ui/FillUi$Callback;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "focusedViewId"    # Landroid/view/autofill/AutofillId;
    .param p4, "filterText"    # Ljava/lang/String;
    .param p5, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p6, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p7, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "nightMode"    # Z
    .param p9, "callback"    # Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 135
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 96
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 136
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v6, "FillUi"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightMode: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    if-eqz v4, :cond_1

    const v0, 0x10303df

    goto :goto_0

    :cond_1
    const v0, 0x10303e9

    :goto_0
    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    .line 138
    move-object/from16 v7, p9

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/ui/FillUi;->isFullScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 140
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v8, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    move-object/from16 v9, p1

    invoke-direct {v0, v9, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 144
    .local v8, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    move-result-object v10

    .line 145
    .local v10, "headerPresentation":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    move-result-object v11

    .line 147
    .local v11, "footerPresentation":Landroid/widget/RemoteViews;
    iget-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v0, :cond_2

    .line 148
    const v0, 0x109003f

    invoke-virtual {v8, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v12, v0

    .local v0, "decor":Landroid/view/ViewGroup;
    goto :goto_2

    .line 149
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :cond_2
    if-nez v10, :cond_4

    if-eqz v11, :cond_3

    goto :goto_1

    .line 153
    :cond_3
    const v0, 0x109003e

    invoke-virtual {v8, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v12, v0

    .restart local v0    # "decor":Landroid/view/ViewGroup;
    goto :goto_2

    .line 150
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :cond_4
    :goto_1
    const v0, 0x1090040

    invoke-virtual {v8, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v12, v0

    .line 155
    .local v12, "decor":Landroid/view/ViewGroup;
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 156
    const v13, 0x10201e9

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 157
    .local v13, "titleView":Landroid/widget/TextView;
    const/4 v14, 0x0

    if-eqz v13, :cond_5

    .line 158
    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const v5, 0x1040180

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p6, v4, v14

    invoke-virtual {v15, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_5
    const v4, 0x10201e6

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 161
    .local v4, "iconView":Landroid/widget/ImageView;
    if-eqz v4, :cond_6

    .line 162
    move-object/from16 v5, p7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 161
    :cond_6
    move-object/from16 v5, p7

    .line 166
    :goto_3
    iget-boolean v15, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v15, :cond_7

    .line 167
    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 168
    .local v15, "outPoint":Landroid/graphics/Point;
    iget-object v14, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 170
    const/4 v14, -0x1

    iput v14, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 171
    iget v14, v15, Landroid/graphics/Point;->y:I

    div-int/lit8 v14, v14, 0x2

    iput v14, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 172
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_7

    .line 173
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "initialized fillscreen LayoutParams "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v15    # "outPoint":Landroid/graphics/Point;
    :cond_7
    new-instance v0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FY016gv4LQ5AA6yOkKTH3EM5zaM;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FY016gv4LQ5AA6yOkKTH3EM5zaM;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 196
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 197
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 198
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_9

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "overriding maximum visible datasets to "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 202
    :cond_8
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x10e0004

    .line 203
    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 206
    :cond_9
    :goto_4
    new-instance v14, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$QXIyKJs3cMApGd5ifauQkxdpdqk;

    .local v14, "interceptionHandler":Landroid/widget/RemoteViews$OnClickHandler;
    invoke-direct {v14, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$QXIyKJs3cMApGd5ifauQkxdpdqk;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    const-string v15, "Error inflating remote views"

    if-eqz v0, :cond_c

    .line 214
    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "iconView":Landroid/widget/ImageView;
    .local v18, "iconView":Landroid/widget/ImageView;
    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 215
    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 216
    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 217
    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 220
    const v0, 0x10201e8

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .line 223
    .local v4, "container":Landroid/view/ViewGroup;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v7, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {v0, v5, v12, v14, v7}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    nop

    .line 232
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 233
    new-instance v5, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$h0jT24YuSGGDnoZ6Tf22n1QRkO8;

    move-object/from16 v7, p2

    invoke-direct {v5, v1, v7}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$h0jT24YuSGGDnoZ6Tf22n1QRkO8;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-boolean v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-nez v5, :cond_b

    .line 236
    iget-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 237
    .local v5, "maxSize":Landroid/graphics/Point;
    iget-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-boolean v15, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    move-object/from16 v16, v4

    .end local v4    # "container":Landroid/view/ViewGroup;
    .local v16, "container":Landroid/view/ViewGroup;
    const/4 v4, -0x2

    if-eqz v15, :cond_a

    iget v15, v5, Landroid/graphics/Point;->x:I

    goto :goto_5

    .line 240
    :cond_a
    move v15, v4

    :goto_5
    iput v15, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    iget v4, v5, Landroid/graphics/Point;->x:I

    const/high16 v6, -0x80000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 244
    .local v4, "widthMeasureSpec":I
    iget v15, v5, Landroid/graphics/Point;->y:I

    invoke-static {v15, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 247
    .local v6, "heightMeasureSpec":I
    invoke-virtual {v12, v4, v6}, Landroid/view/ViewGroup;->measure(II)V

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iput v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    iput v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    goto :goto_6

    .line 235
    .end local v5    # "maxSize":Landroid/graphics/Point;
    .end local v6    # "heightMeasureSpec":I
    .end local v16    # "container":Landroid/view/ViewGroup;
    .local v4, "container":Landroid/view/ViewGroup;
    :cond_b
    move-object/from16 v16, v4

    .line 252
    .end local v4    # "container":Landroid/view/ViewGroup;
    .restart local v16    # "container":Landroid/view/ViewGroup;
    :goto_6
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v4, v1, v12, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 254
    .end local v0    # "content":Landroid/view/View;
    .end local v16    # "container":Landroid/view/ViewGroup;
    move-object/from16 v17, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_11

    .line 226
    .restart local v4    # "container":Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v16, v4

    .line 227
    .end local v4    # "container":Landroid/view/ViewGroup;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v16    # "container":Landroid/view/ViewGroup;
    invoke-interface/range {p9 .. p9}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    .line 228
    invoke-static {v6, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 230
    return-void

    .line 255
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v16    # "container":Landroid/view/ViewGroup;
    .end local v18    # "iconView":Landroid/widget/ImageView;
    .local v4, "iconView":Landroid/widget/ImageView;
    :cond_c
    move-object/from16 v7, p2

    move-object/from16 v18, v4

    .end local v4    # "iconView":Landroid/widget/ImageView;
    .restart local v18    # "iconView":Landroid/widget/ImageView;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 256
    .local v4, "datasetCount":I
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_d

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number datasets: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " max visible: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_d
    const/4 v0, 0x0

    .line 262
    .local v0, "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    if-eqz v10, :cond_f

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v0

    .line 264
    iget-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v7, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    move-object/from16 v17, v8

    const/4 v8, 0x0

    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .local v17, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v10, v5, v8, v0, v7}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 265
    const v5, 0x10201e5

    .line 266
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 267
    .local v5, "headerContainer":Landroid/widget/LinearLayout;
    iget-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 268
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_e

    const-string v7, "adding header"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_e
    iget-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    .end local v5    # "headerContainer":Landroid/widget/LinearLayout;
    goto :goto_7

    .line 272
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    :cond_f
    move-object/from16 v17, v8

    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v17    # "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 275
    :goto_7
    if-eqz v11, :cond_13

    .line 276
    const v5, 0x10201e4

    .line 277
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 278
    .local v5, "footerContainer":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_12

    .line 279
    if-nez v0, :cond_10

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v0

    .line 282
    :cond_10
    iget-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v8, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    const/4 v9, 0x0

    invoke-virtual {v11, v7, v9, v0, v8}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 286
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_11

    const-string v7, "adding footer"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_11
    iget-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v7, 0x0

    goto :goto_8

    .line 290
    :cond_12
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 292
    .end local v5    # "footerContainer":Landroid/widget/LinearLayout;
    :goto_8
    move-object v5, v0

    goto :goto_9

    .line 293
    :cond_13
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    move-object v5, v0

    .line 296
    .end local v0    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .local v5, "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v0

    .line 297
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_a
    if-ge v8, v4, :cond_1b

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/service/autofill/Dataset;

    .line 299
    .local v9, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    move/from16 v25, v4

    .end local v4    # "datasetCount":I
    .local v25, "datasetCount":I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 300
    .local v4, "index":I
    if-ltz v4, :cond_1a

    .line 301
    move-object/from16 v26, v5

    .end local v5    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .local v26, "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    invoke-virtual {v9, v4}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 302
    .local v5, "presentation":Landroid/widget/RemoteViews;
    if-nez v5, :cond_14

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v10

    .end local v10    # "headerPresentation":Landroid/widget/RemoteViews;
    .local v27, "headerPresentation":Landroid/widget/RemoteViews;
    const-string/jumbo v10, "not displaying UI on field "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    move-object/from16 v28, v11

    goto/16 :goto_f

    .line 309
    .end local v27    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v10    # "headerPresentation":Landroid/widget/RemoteViews;
    :cond_14
    move-object/from16 v27, v10

    .end local v10    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v27    # "headerPresentation":Landroid/widget/RemoteViews;
    :try_start_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_15

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting remote view for "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    .line 312
    :catch_1
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v28, v11

    goto/16 :goto_e

    .line 310
    :cond_15
    :goto_b
    :try_start_3
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v10, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v28, v11

    const/4 v11, 0x0

    .end local v11    # "footerPresentation":Landroid/widget/RemoteViews;
    .local v28, "footerPresentation":Landroid/widget/RemoteViews;
    :try_start_4
    invoke-virtual {v5, v0, v11, v14, v10}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 315
    .local v0, "view":Landroid/view/View;
    nop

    .line 318
    invoke-virtual {v9, v4}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v10

    .line 319
    .local v10, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    const/4 v11, 0x0

    .line 320
    .local v11, "filterPattern":Ljava/util/regex/Pattern;
    const/16 v19, 0x0

    .line 321
    .local v19, "valueText":Ljava/lang/String;
    const/16 v20, 0x1

    .line 322
    .local v20, "filterable":Z
    if-nez v10, :cond_17

    .line 323
    move-object/from16 v29, v5

    .end local v5    # "presentation":Landroid/widget/RemoteViews;
    .local v29, "presentation":Landroid/widget/RemoteViews;
    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 324
    .local v5, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 325
    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 327
    .end local v5    # "value":Landroid/view/autofill/AutofillValue;
    :cond_16
    move-object/from16 v30, v10

    move-object/from16 v5, v19

    move/from16 v10, v20

    goto :goto_d

    .line 328
    .end local v29    # "presentation":Landroid/widget/RemoteViews;
    .local v5, "presentation":Landroid/widget/RemoteViews;
    :cond_17
    move-object/from16 v29, v5

    .end local v5    # "presentation":Landroid/widget/RemoteViews;
    .restart local v29    # "presentation":Landroid/widget/RemoteViews;
    iget-object v11, v10, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 329
    if-nez v11, :cond_19

    .line 330
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_18

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v10

    .end local v10    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .local v30, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    const-string v10, "Explicitly disabling filter at id "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for dataset #"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 330
    .end local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v10    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    :cond_18
    move-object/from16 v30, v10

    .line 334
    .end local v10    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    :goto_c
    const/16 v20, 0x0

    move-object/from16 v5, v19

    move/from16 v10, v20

    goto :goto_d

    .line 329
    .end local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v10    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    :cond_19
    move-object/from16 v30, v10

    .end local v10    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .restart local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    move-object/from16 v5, v19

    move/from16 v10, v20

    .line 338
    .end local v19    # "valueText":Ljava/lang/String;
    .end local v20    # "filterable":Z
    .local v5, "valueText":Ljava/lang/String;
    .local v10, "filterable":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 339
    new-instance v2, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v11

    move/from16 v22, v10

    move-object/from16 v23, v5

    move-object/from16 v24, v0

    invoke-direct/range {v19 .. v24}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 312
    .end local v0    # "view":Landroid/view/View;
    .end local v10    # "filterable":Z
    .end local v11    # "filterPattern":Ljava/util/regex/Pattern;
    .end local v29    # "presentation":Landroid/widget/RemoteViews;
    .end local v30    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .local v5, "presentation":Landroid/widget/RemoteViews;
    :catch_2
    move-exception v0

    move-object/from16 v29, v5

    .end local v5    # "presentation":Landroid/widget/RemoteViews;
    .restart local v29    # "presentation":Landroid/widget/RemoteViews;
    goto :goto_e

    .end local v28    # "footerPresentation":Landroid/widget/RemoteViews;
    .end local v29    # "presentation":Landroid/widget/RemoteViews;
    .restart local v5    # "presentation":Landroid/widget/RemoteViews;
    .local v11, "footerPresentation":Landroid/widget/RemoteViews;
    :catch_3
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v28, v11

    .line 313
    .end local v5    # "presentation":Landroid/widget/RemoteViews;
    .end local v11    # "footerPresentation":Landroid/widget/RemoteViews;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v28    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v29    # "presentation":Landroid/widget/RemoteViews;
    :goto_e
    invoke-static {v6, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    goto :goto_f

    .line 300
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v27    # "headerPresentation":Landroid/widget/RemoteViews;
    .end local v28    # "footerPresentation":Landroid/widget/RemoteViews;
    .end local v29    # "presentation":Landroid/widget/RemoteViews;
    .local v5, "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .local v10, "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v11    # "footerPresentation":Landroid/widget/RemoteViews;
    :cond_1a
    move-object/from16 v26, v5

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .line 297
    .end local v4    # "index":I
    .end local v5    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v9    # "dataset":Landroid/service/autofill/Dataset;
    .end local v10    # "headerPresentation":Landroid/widget/RemoteViews;
    .end local v11    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v26    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v27    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v28    # "footerPresentation":Landroid/widget/RemoteViews;
    :goto_f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    goto/16 :goto_a

    .end local v25    # "datasetCount":I
    .end local v26    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v27    # "headerPresentation":Landroid/widget/RemoteViews;
    .end local v28    # "footerPresentation":Landroid/widget/RemoteViews;
    .local v4, "datasetCount":I
    .restart local v5    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v10    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v11    # "footerPresentation":Landroid/widget/RemoteViews;
    :cond_1b
    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .line 343
    .end local v4    # "datasetCount":I
    .end local v5    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v8    # "i":I
    .end local v10    # "headerPresentation":Landroid/widget/RemoteViews;
    .end local v11    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v25    # "datasetCount":I
    .restart local v26    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v27    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v28    # "footerPresentation":Landroid/widget/RemoteViews;
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {v0, v1, v7}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 345
    const v0, 0x10201e7

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 346
    iget-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 348
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$TUHYXtyYjvn8kBKxh1vyXjC9x84;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$TUHYXtyYjvn8kBKxh1vyXjC9x84;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 353
    if-nez p4, :cond_1c

    .line 354
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_10

    .line 356
    :cond_1c
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 359
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 360
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v12, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 362
    .end local v7    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    .end local v25    # "datasetCount":I
    .end local v26    # "clickBlocker":Landroid/widget/RemoteViews$OnClickHandler;
    :goto_11
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 71
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 71
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 71
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 71
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi;

    .line 71
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method private announceSearchResultIfNeeded()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    .line 809
    :cond_1
    return-void
.end method

.method private applyCancelAction(Landroid/view/View;[I)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "ids"    # [I

    .line 365
    if-nez p2, :cond_0

    .line 366
    return-void

    .line 369
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v1, "FillUi"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill UI has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " actions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply actions because fill UI root is not a ViewGroup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 377
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 378
    .local v0, "root":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_4

    .line 379
    aget v3, p2, v2

    .line 380
    .local v3, "id":I
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 381
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_3

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring cancel action for view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " because it\'s not on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    goto :goto_1

    .line 386
    :cond_3
    new-instance v5, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$zuAn5qphsSlw1XuFy87NCNwUcP8;

    invoke-direct {v5, p0}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$zuAn5qphsSlw1XuFy87NCNwUcP8;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    .end local v3    # "id":I
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private applyNewFilterText()V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    .line 411
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$2mij2xTFFWU6jS7_ER9Z-DufU90;

    invoke-direct {v3, p0, v0}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$2mij2xTFFWU6jS7_ER9Z-DufU90;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 436
    return-void
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 125
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 126
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forcing full-screen mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$newClickBlocker$5(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 404
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring click on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;
    .locals 1

    .line 403
    sget-object v0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$6jFaWS-2Oix04tyCKVhIK-exOKg;->INSTANCE:Lcom/android/server/autofill/ui/-$$Lambda$FillUi$6jFaWS-2Oix04tyCKVhIK-exOKg;

    return-object v0
.end method

.method private static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .line 562
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 563
    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    .line 564
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120014

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 566
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120013

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 569
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 570
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .line 556
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 559
    return-void

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateContentSize()Z
    .locals 8

    .line 478
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 479
    return v1

    .line 481
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v2, :cond_1

    .line 483
    const/4 v0, 0x1

    return v0

    .line 485
    :cond_1
    const/4 v2, 0x0

    .line 486
    .local v2, "changed":Z
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 487
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v0, :cond_2

    .line 488
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 489
    const/4 v2, 0x1

    .line 491
    :cond_2
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v0, :cond_3

    .line 492
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 493
    const/4 v2, 0x1

    .line 495
    :cond_3
    return v2

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 499
    .local v0, "maxSize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 501
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 502
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 504
    iget v1, v0, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 506
    .local v1, "widthMeasureSpec":I
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 508
    .local v3, "heightMeasureSpec":I
    iget-object v4, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v4

    .line 510
    .local v4, "itemCount":I
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 511
    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 512
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 513
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 516
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_7

    .line 517
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v6, v5}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 518
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    .line 519
    invoke-direct {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 520
    iget v7, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v5, v7, :cond_6

    .line 521
    invoke-direct {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 516
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 525
    .end local v5    # "i":I
    :cond_7
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 526
    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 527
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 528
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 530
    :cond_8
    return v2
.end method

.method private updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 547
    .local v1, "clampedMeasuredHeight":I
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int v3, v2, v1

    .line 548
    .local v3, "newContentHeight":I
    if-eq v3, v2, :cond_0

    .line 549
    iput v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 550
    const/4 v0, 0x1

    .line 552
    :cond_0
    return v0
.end method

.method private updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 536
    .local v1, "clampedMeasuredWidth":I
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 537
    .local v2, "newContentWidth":I
    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq v2, v3, :cond_0

    .line 538
    iput v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 539
    const/4 v0, 0x1

    .line 541
    :cond_0
    return v0
.end method


# virtual methods
.method public destroy(Z)V
    .locals 2
    .param p1, "notifyClient"    # Z

    .line 466
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 467
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_0

    .line 468
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    .line 471
    if-eqz p1, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    .line 474
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 475
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 748
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 749
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFullScreen: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 750
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleDatasetsMaxCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 752
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHeader: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 756
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mListView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 759
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v0, :cond_4

    .line 762
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdapter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 764
    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 765
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFilterText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 768
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentWidth: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 769
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 770
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDestroyed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 771
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 772
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    const v3, 0x10303df

    if-eq v0, v3, :cond_7

    const v3, 0x10303e9

    if-eq v0, v3, :cond_6

    .line 780
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 777
    :cond_6
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    goto :goto_1

    .line 774
    :cond_7
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    nop

    .line 783
    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_a

    .line 784
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 787
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "showing: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$300(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 788
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "view: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 789
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 790
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "params: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 792
    :cond_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "screen coordinates: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    .line 794
    const-string v1, "N/A"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 796
    :cond_9
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v3

    .line 797
    .local v3, "coordinates":[I
    aget v2, v3, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 800
    .end local v0    # "prefix2":Ljava/lang/String;
    .end local v3    # "coordinates":[I
    :cond_a
    :goto_2
    return-void
.end method

.method public synthetic lambda$applyCancelAction$4$FillUi(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 387
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Cancelling session after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->cancelSession()V

    .line 391
    return-void
.end method

.method public synthetic lambda$applyNewFilterText$6$FillUi(II)V
    .locals 3
    .param p1, "oldCount"    # I
    .param p2, "count"    # I

    .line 412
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 413
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    if-gtz p2, :cond_3

    .line 416
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 418
    .local v0, "size":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No dataset matches filter with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FillUi"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v0    # "size":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_2

    .line 422
    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 423
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 425
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-le v1, v2, :cond_5

    .line 426
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_1

    .line 429
    :cond_5
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 431
    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_6

    .line 432
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 435
    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$new$0$FillUi(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 180
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 191
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    .line 192
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$new$1$FillUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "r"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 207
    if-eqz p2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 210
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$new$2$FillUi(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 1
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "v"    # Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method public synthetic lambda$new$3$FillUi(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 349
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v0

    .line 350
    .local v0, "vi":Lcom/android/server/autofill/ui/FillUi$ViewItem;
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    .line 351
    return-void
.end method

.method requestShowFillUi()V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    .line 397
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterText"    # Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 440
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_1

    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    goto :goto_0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    .line 448
    :goto_0
    return-void

    .line 451
    :cond_1
    if-nez p1, :cond_2

    .line 452
    const/4 p1, 0x0

    goto :goto_1

    .line 454
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 457
    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    return-void

    .line 460
    :cond_3
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 462
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 463
    return-void
.end method

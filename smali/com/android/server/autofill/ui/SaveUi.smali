.class final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;,
        Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    }
.end annotation


# static fields
.field private static final SCROLL_BAR_DEFAULT_DELAY_BEFORE_FADE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "SaveUi"

.field private static final THEME_ID_DARK:I = 0x10303e1

.field private static final THEME_ID_LIGHT:I = 0x10303ea


# instance fields
.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mDestroyed:Z

.field private final mDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSubTitle:Ljava/lang/CharSequence;

.field private final mThemeId:I

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;ZZZ)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p3, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p4, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "servicePackageName"    # Ljava/lang/String;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "info"    # Landroid/service/autofill/SaveInfo;
    .param p8, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p9, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p10, "listener"    # Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    .param p11, "nightMode"    # Z
    .param p12, "isUpdate"    # Z
    .param p13, "compatMode"    # Z

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 180
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v4, "SaveUi"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nightMode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    if-eqz v2, :cond_1

    const v3, 0x10303e1

    goto :goto_0

    :cond_1
    const v3, 0x10303ea

    :goto_0
    iput v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    .line 182
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 183
    new-instance v5, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v6, p10

    invoke-direct {v5, v0, v6}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;-><init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 184
    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 185
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 186
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 187
    move/from16 v9, p13

    iput-boolean v9, v0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 189
    new-instance v10, Lcom/android/server/autofill/ui/SaveUi$1;

    iget v11, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    move-object/from16 v12, p1

    invoke-direct {v10, v0, v12, v11}, Lcom/android/server/autofill/ui/SaveUi$1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/Context;I)V

    .line 220
    .end local p1    # "context":Landroid/content/Context;
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 221
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x1090041

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 223
    .local v12, "view":Landroid/view/View;
    const v14, 0x10201ee

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 225
    .local v14, "titleView":Landroid/widget/TextView;
    new-instance v15, Landroid/util/ArraySet;

    const/4 v13, 0x3

    invoke-direct {v15, v13}, Landroid/util/ArraySet;-><init>(I)V

    .line 226
    .local v15, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v13

    iput v13, v0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    .line 228
    const/4 v2, 0x1

    and-int/2addr v13, v2

    if-eqz v13, :cond_2

    .line 229
    const v13, 0x1040172

    invoke-virtual {v10, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_2
    iget v13, v0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    const/4 v2, 0x2

    and-int/2addr v13, v2

    if-eqz v13, :cond_3

    .line 232
    const v13, 0x104016d

    invoke-virtual {v10, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_3
    const/16 v13, 0x64

    .line 239
    .local v13, "cardTypeMask":I
    iget v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    and-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    .line 240
    .local v2, "count":I
    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    iget v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    move/from16 v19, v2

    .end local v2    # "count":I
    .local v19, "count":I
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_4

    goto :goto_1

    .line 242
    :cond_4
    and-int/lit8 v2, v3, 0x40

    if-eqz v2, :cond_5

    .line 243
    const v2, 0x1040173

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 244
    :cond_5
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_6

    .line 245
    const v2, 0x104016e

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    :cond_6
    const/16 v2, 0x20

    and-int/2addr v3, v2

    if-eqz v3, :cond_8

    .line 247
    const v2, 0x104016f

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 240
    .end local v19    # "count":I
    .restart local v2    # "count":I
    :cond_7
    move/from16 v19, v2

    .line 241
    .end local v2    # "count":I
    .restart local v19    # "count":I
    :goto_1
    const v2, 0x1040171

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_8
    :goto_2
    iget v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_9

    .line 250
    const v2, 0x1040174

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_9
    iget v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 253
    const v2, 0x1040170

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_a
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    .line 277
    nop

    .line 278
    if-eqz p12, :cond_b

    const v2, 0x104017a

    goto :goto_3

    .line 279
    :cond_b
    const v2, 0x1040169

    :goto_3
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v5, v3

    .line 278
    invoke-virtual {v10, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_7

    .line 270
    :cond_c
    nop

    .line 271
    if-eqz p12, :cond_d

    const v2, 0x104017c

    goto :goto_4

    .line 272
    :cond_d
    const v2, 0x104016b

    :goto_4
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 273
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v3, v5

    const/4 v5, 0x2

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v3, v5

    const/4 v5, 0x3

    aput-object p3, v3, v5

    .line 270
    invoke-virtual {v10, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 274
    goto :goto_7

    .line 264
    :cond_e
    nop

    .line 265
    if-eqz p12, :cond_f

    const v2, 0x104017b

    goto :goto_5

    .line 266
    :cond_f
    const v2, 0x104016a

    :goto_5
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 267
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    .line 264
    invoke-virtual {v10, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 268
    goto :goto_7

    .line 258
    :cond_10
    nop

    .line 259
    if-eqz p12, :cond_11

    const v2, 0x104017d

    goto :goto_6

    .line 260
    :cond_11
    const v2, 0x104016c

    :goto_6
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    .line 261
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v5, v3

    const/16 v16, 0x1

    aput-object p3, v5, v16

    .line 258
    invoke-virtual {v10, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 262
    nop

    .line 282
    :goto_7
    iget-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    move-object/from16 v2, p4

    invoke-direct {v0, v10, v12, v2}, Lcom/android/server/autofill/ui/SaveUi;->setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 286
    nop

    .line 287
    move-object/from16 v3, p8

    invoke-direct {v0, v10, v12, v3, v1}, Lcom/android/server/autofill/ui/SaveUi;->applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z

    move-result v5

    .line 288
    .local v5, "hasCustomDescription":Z
    if-eqz v5, :cond_13

    .line 289
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 290
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "on constructor: applied custom description"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move/from16 p1, v5

    goto :goto_9

    .line 292
    :cond_13
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 293
    if-eqz v2, :cond_14

    .line 294
    const/16 v2, 0x46b

    invoke-direct {v0, v2}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(I)V

    .line 295
    const v2, 0x10201eb

    .line 296
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 297
    .local v2, "subtitleContainer":Landroid/view/ViewGroup;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 298
    .local v3, "subtitleView":Landroid/widget/TextView;
    move/from16 p1, v5

    .end local v5    # "hasCustomDescription":Z
    .local p1, "hasCustomDescription":Z
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-direct {v0, v3}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    .line 300
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    const/16 v5, 0x1f4

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V

    goto :goto_8

    .line 293
    .end local v2    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v3    # "subtitleView":Landroid/widget/TextView;
    .end local p1    # "hasCustomDescription":Z
    .restart local v5    # "hasCustomDescription":Z
    :cond_14
    move/from16 p1, v5

    .line 307
    .end local v5    # "hasCustomDescription":Z
    .restart local p1    # "hasCustomDescription":Z
    :goto_8
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "on constructor: title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", subTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_15
    :goto_9
    const v2, 0x10201ed

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 311
    .local v2, "noButton":Landroid/widget/TextView;
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v3

    .line 312
    .local v3, "negativeActionStyle":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_17

    const/4 v4, 0x2

    if-eq v3, v4, :cond_16

    .line 321
    const v4, 0x1040167

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    .line 317
    :cond_16
    const v4, 0x1040166

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 318
    goto :goto_a

    .line 314
    :cond_17
    const v4, 0x1040168

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 315
    nop

    .line 323
    :goto_a
    new-instance v4, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;

    invoke-direct {v4, v0, v1}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v4, 0x10201ef

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 326
    .local v4, "yesButton":Landroid/widget/TextView;
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getPositiveActionStyle()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    .line 327
    const v5, 0x1040143

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b

    .line 328
    :cond_18
    if-eqz p12, :cond_19

    .line 329
    const v5, 0x104017e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 331
    :cond_19
    :goto_b
    new-instance v5, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0;

    invoke-direct {v5, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    new-instance v5, Landroid/app/Dialog;

    iget v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-direct {v5, v10, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 334
    invoke-virtual {v5, v12}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 338
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;

    invoke-direct {v6, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 340
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 341
    .local v5, "window":Landroid/view/Window;
    const/16 v6, 0x7f6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 342
    const v6, 0x60020

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 345
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 346
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 347
    const/16 v6, 0x51

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 348
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 349
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 350
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v7, -0x1

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 351
    const v7, 0x1040165

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 352
    const v7, 0x1030312

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 355
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/ui/SaveUi;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/SaveUi;
    .param p1, "x1"    # Landroid/app/PendingIntent;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method private applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveUiView"    # Landroid/view/View;
    .param p3, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p4, "info"    # Landroid/service/autofill/SaveInfo;

    .line 359
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v4

    .line 360
    .local v4, "customDescription":Landroid/service/autofill/CustomDescription;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 361
    return v5

    .line 363
    :cond_0
    const/16 v0, 0x469

    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(I)V

    .line 365
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v6

    .line 366
    .local v6, "template":Landroid/widget/RemoteViews;
    const-string v7, "SaveUi"

    if-nez v6, :cond_1

    .line 367
    const-string v0, "No remote view on custom description"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v5

    .line 372
    :cond_1
    nop

    .line 373
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getTransformations()Ljava/util/ArrayList;

    move-result-object v8

    .line 374
    .local v8, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyCustomDescription(): transformations = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_2
    if-eqz v8, :cond_3

    .line 378
    invoke-static {v3, v6, v8}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 379
    const-string v0, "could not apply main transformations on custom description"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return v5

    .line 384
    :cond_3
    new-instance v9, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$9E3wVcFykoYBpXtez_dJMd6U_Nw;

    .local v9, "handler":Landroid/widget/RemoteViews$OnClickHandler;
    invoke-direct {v9, v1}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$9E3wVcFykoYBpXtez_dJMd6U_Nw;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    .line 400
    const/4 v0, 0x0

    :try_start_0
    iget v10, v1, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {v6, v2, v0, v9, v10}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v0

    .line 404
    .local v0, "customSubtitleView":Landroid/view/View;
    nop

    .line 405
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getUpdates()Ljava/util/ArrayList;

    move-result-object v10

    .line 406
    .local v10, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v11, :cond_4

    .line 407
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyCustomDescription(): view = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " updates="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 486
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :catch_0
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    goto/16 :goto_b

    .line 410
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_4
    :goto_0
    const-string v11, "custom description has "

    if-eqz v10, :cond_f

    .line 411
    :try_start_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 412
    .local v12, "size":I
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v13, :cond_5

    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " batch updates"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 413
    :cond_5
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v12, :cond_e

    .line 414
    :try_start_4
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 415
    .local v14, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Landroid/service/autofill/InternalValidator;

    .line 416
    .local v15, "condition":Landroid/service/autofill/InternalValidator;
    if-eqz v15, :cond_c

    invoke-virtual {v15, v3}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto/16 :goto_5

    .line 420
    :cond_6
    iget-object v5, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/BatchUpdates;

    .line 422
    .local v5, "batchUpdates":Landroid/service/autofill/BatchUpdates;
    invoke-virtual {v5}, Landroid/service/autofill/BatchUpdates;->getUpdates()Landroid/widget/RemoteViews;

    move-result-object v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v18, v17

    .line 423
    .local v18, "templateUpdates":Landroid/widget/RemoteViews;
    move-object/from16 v17, v8

    move-object/from16 v8, v18

    .end local v18    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v8, "templateUpdates":Landroid/widget/RemoteViews;
    .local v17, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    if-eqz v8, :cond_8

    .line 424
    :try_start_5
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v18, :cond_7

    move-object/from16 v18, v9

    .end local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .local v18, "handler":Landroid/widget/RemoteViews$OnClickHandler;
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v10

    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .local v19, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    const-string v10, "Applying template updates for batch update #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_7
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 425
    .end local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :goto_2
    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_3

    .line 486
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .end local v12    # "size":I
    .end local v13    # "i":I
    .end local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v15    # "condition":Landroid/service/autofill/InternalValidator;
    .end local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    :catch_1
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    .end local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    goto/16 :goto_b

    .line 423
    .end local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .restart local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v12    # "size":I
    .restart local v13    # "i":I
    .restart local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .restart local v15    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_8
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 428
    .end local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :goto_3
    nop

    .line 429
    invoke-virtual {v5}, Landroid/service/autofill/BatchUpdates;->getTransformations()Ljava/util/ArrayList;

    move-result-object v9

    .line 430
    .local v9, "batchTransformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    if-eqz v9, :cond_b

    .line 431
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v20, v5

    .end local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .local v20, "batchUpdates":Landroid/service/autofill/BatchUpdates;
    const-string v5, ": "

    if-eqz v10, :cond_9

    .line 432
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v8

    .end local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v21, "templateUpdates":Landroid/widget/RemoteViews;
    const-string v8, "Applying child transformation for batch update #"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 431
    .end local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    :cond_9
    move-object/from16 v21, v8

    .line 435
    .end local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    :goto_4
    invoke-static {v3, v6, v9}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 437
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not apply child transformation for batch update #"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v5, 0x0

    return v5

    .line 441
    :cond_a
    invoke-virtual {v6, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_6

    .line 430
    .end local v20    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .restart local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    :cond_b
    move-object/from16 v20, v5

    move-object/from16 v21, v8

    .end local v5    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v8    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v20    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .restart local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    goto :goto_6

    .line 416
    .end local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v20    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v21    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v8, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .local v9, "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_c
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 417
    .end local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :goto_5
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping batch update #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v14    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v15    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_d
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_e
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .end local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    goto :goto_7

    .line 410
    .end local v12    # "size":I
    .end local v13    # "i":I
    .end local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_f
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 447
    .end local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :goto_7
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getActions()Landroid/util/SparseArray;

    move-result-object v5

    .line 448
    .local v5, "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    if-eqz v5, :cond_13

    .line 449
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 450
    .local v8, "size":I
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " actions"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_10
    instance-of v9, v0, Landroid/view/ViewGroup;

    if-nez v9, :cond_11

    .line 452
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot apply actions because custom description root is not a ViewGroup: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 455
    :cond_11
    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    .line 456
    .local v9, "rootView":Landroid/view/ViewGroup;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_8
    if-ge v10, v8, :cond_13

    .line 457
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 458
    .local v11, "id":I
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/autofill/InternalOnClickAction;

    .line 459
    .local v12, "action":Landroid/service/autofill/InternalOnClickAction;
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 460
    .local v13, "child":Landroid/view/View;
    if-nez v13, :cond_12

    .line 461
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring action "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " for view "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " because it\'s not on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 463
    goto :goto_9

    .line 465
    :cond_12
    :try_start_8
    new-instance v14, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;

    invoke-direct {v14, v12, v9}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;-><init>(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    .end local v11    # "id":I
    .end local v12    # "action":Landroid/service/autofill/InternalOnClickAction;
    .end local v13    # "child":Landroid/view/View;
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 486
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v5    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .end local v8    # "size":I
    .end local v9    # "rootView":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :catch_2
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_b

    .line 475
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v5    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .restart local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_13
    :goto_a
    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/SaveUi;->applyTextViewStyle(Landroid/view/View;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 478
    const v8, 0x10201eb

    .line 479
    move-object/from16 v9, p2

    :try_start_a
    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 480
    .local v8, "subtitleContainer":Landroid/view/ViewGroup;
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 481
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 482
    const/16 v10, 0x1f4

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 485
    const/4 v7, 0x1

    return v7

    .line 486
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v5    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .end local v8    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v19    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_b

    .end local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .local v8, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .local v9, "handler":Landroid/widget/RemoteViews$OnClickHandler;
    :catch_5
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    .line 487
    .end local v8    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v9    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v18    # "handler":Landroid/widget/RemoteViews$OnClickHandler;
    :goto_b
    const-string v5, "Error applying custom description. "

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    return v5
.end method

.method private applyMovementMethodIfNeed(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 532
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 533
    .local v0, "message":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    return-void

    .line 537
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 538
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 539
    .local v2, "spans":[Landroid/text/style/ClickableSpan;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    return-void

    .line 543
    :cond_1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 544
    return-void
.end method

.method private applyTextViewStyle(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v0, "textViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$MHTJI4CEYKh8w8RM-t9zG_19Jjc;

    .local v1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$MHTJI4CEYKh8w8RM-t9zG_19Jjc;-><init>(Ljava/util/List;)V

    .line 524
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 525
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 526
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 527
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    .line 526
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 529
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private static isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 571
    const/4 v0, 0x0

    const-string v1, "SaveUi"

    if-nez p0, :cond_0

    .line 572
    const-string/jumbo v2, "isValidLink(): custom description without pending intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v0

    .line 575
    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    const-string/jumbo v2, "isValidLink(): pending intent not for activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v0

    .line 579
    :cond_1
    if-nez p1, :cond_2

    .line 580
    const-string/jumbo v2, "isValidLink(): no intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return v0

    .line 583
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$applyCustomDescription$4(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p0, "action"    # Landroid/service/autofill/InternalOnClickAction;
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;

    .line 466
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    invoke-virtual {p0, p1}, Landroid/service/autofill/InternalOnClickAction;->onClick(Landroid/view/ViewGroup;)V

    .line 470
    return-void
.end method

.method static synthetic lambda$applyTextViewStyle$5(Ljava/util/List;Landroid/view/View;)Z
    .locals 1
    .param p0, "textViews"    # Ljava/util/List;
    .param p1, "view"    # Landroid/view/View;

    .line 516
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 518
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .locals 4
    .param p1, "category"    # I

    .line 591
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget v2, v2, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(II)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "category"    # I
    .param p2, "saveType"    # I

    .line 587
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x46a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "serviceIcon"    # Landroid/graphics/drawable/Drawable;

    .line 547
    const v0, 0x10201ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 548
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 550
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 551
    .local v2, "maxWidth":I
    move v3, v2

    .line 552
    .local v3, "maxHeight":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 553
    .local v4, "actualWidth":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 555
    .local v5, "actualHeight":I
    const-string v6, ")."

    const-string v7, "SaveUi"

    const-string/jumbo v8, "x"

    if-gt v4, v2, :cond_1

    if-gt v5, v3, :cond_1

    .line 556
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_0

    .line 557
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding service icon ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") as it\'s less than maximum ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 563
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not adding service icon of size ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") because maximum is ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 568
    :goto_0
    return-void
.end method

.method private show()V
    .locals 2

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing save dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 638
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    .line 639
    return-void
.end method

.method private startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 494
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "SaveUi"

    if-eqz v0, :cond_0

    const-string v0, "Intercepting custom description intent"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v0

    .line 500
    .local v0, "token":Landroid/os/IBinder;
    const-string v2, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 502
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 503
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 505
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiding UI until restored with token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 508
    const/16 v1, 0x46c

    iget v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 509
    .local v1, "log":Landroid/metrics/LogMaker;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 510
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 511
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .line 669
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 672
    return-void

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeLog(I)V
    .locals 2
    .param p1, "category"    # I

    .line 596
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 597
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 657
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->throwIfDestroyed()V

    .line 659
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onDestroy()V

    .line 660
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 665
    nop

    .line 666
    return-void

    .line 664
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 665
    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 680
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "title: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 681
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 682
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "pendingUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 683
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "compat mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 686
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 687
    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    const v1, 0x10303e1

    if-eq v0, v1, :cond_1

    const v1, 0x10303ea

    if-eq v0, v1, :cond_0

    .line 695
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_0
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    goto :goto_0

    .line 689
    :cond_1
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    nop

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 699
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 700
    .local v1, "loc":[I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x29

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 702
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 703
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 704
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 705
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "destroyed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 706
    return-void
.end method

.method hide()Lcom/android/server/autofill/ui/PendingUi;
    .locals 2

    .line 642
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveUi"

    const-string v1, "Hiding save dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 647
    nop

    .line 648
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0

    .line 646
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 647
    throw v0
.end method

.method isShowing()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$applyCustomDescription$3$SaveUi(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 385
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2, v0}, Lcom/android/server/autofill/ui/SaveUi;->isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    .line 387
    .local v1, "isValid":Z
    if-nez v1, :cond_0

    .line 388
    const/16 v2, 0x46c

    iget v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 389
    .local v2, "log":Landroid/metrics/LogMaker;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 390
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 391
    return v3

    .line 394
    .end local v2    # "log":Landroid/metrics/LogMaker;
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/server/autofill/ui/SaveUi;->startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 395
    const/4 v2, 0x1

    return v2
.end method

.method public synthetic lambda$new$0$SaveUi(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .locals 2
    .param p1, "info"    # Landroid/service/autofill/SaveInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 323
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method public synthetic lambda$new$1$SaveUi(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 331
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onSave()V

    return-void
.end method

.method public synthetic lambda$new$2$SaveUi(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 338
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method onPendingUi(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 607
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/PendingUi;->matches(Landroid/os/IBinder;)Z

    move-result v0

    const-string v1, "SaveUi"

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): got token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " instead of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 609
    invoke-virtual {v2}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void

    .line 612
    :cond_0
    const/16 v0, 0x46e

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 614
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 626
    const/16 v2, 0xb

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore(): invalid operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    :cond_1
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring save dialog for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_2
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 618
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 619
    goto :goto_0

    .line 621
    :cond_3
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 622
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling pending save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    nop

    .line 630
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 631
    nop

    .line 632
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 633
    return-void

    .line 630
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 631
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, "NO TITLE"

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.class final Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OpBrightnessReasonAndRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OpBrightnessReasonAndRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OpBrightnessReasonAndRate;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OpBrightnessReasonAndRate;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 961
    iput-object p1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;->this$0:Lcom/android/server/display/OpBrightnessReasonAndRate;

    .line 962
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 963
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 968
    const-string v0, "fod_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 969
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$002(I)I

    goto/16 :goto_9

    .line 972
    :cond_0
    const-string v0, "dim_debug"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$200()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 973
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$302(I)I

    .line 975
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$300()I

    move-result v0

    const-string v1, "RampAnimator"

    if-ne v0, v5, :cond_1

    .line 976
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v4, 0x3f666666    # 0.9f

    const-string v5, "dim_s1"

    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$402(F)F

    .line 978
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v4, 0x3eb33333    # 0.35f

    const-string v5, "dim_bke"

    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$502(F)F

    .line 980
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v4, 0x3dcccccd    # 0.1f

    const-string v5, "dim_fe"

    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$602(F)F

    .line 982
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v4, 0x3f000000    # 0.5f

    const-string v5, "dim_time"

    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$702(F)F

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStage1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$400()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mbke:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$500()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mfe:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$600()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$700()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 985
    :cond_1
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$300()I

    move-result v0

    const-string v5, "  "

    const/16 v7, 0xb

    if-ne v0, v4, :cond_3

    .line 986
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 987
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 988
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$800()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$900()[F

    move-result-object v8

    aget v8, v8, v0

    .line 987
    invoke-static {v4, v6, v8, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$900()[F

    move-result-object v6

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto/16 :goto_9

    .line 991
    :cond_3
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$300()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 992
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v7, :cond_4

    .line 993
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$900()[F

    move-result-object v4

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 994
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$800()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$900()[F

    move-result-object v9

    aget v9, v9, v0

    .line 993
    invoke-static {v6, v8, v9, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v6

    aput v6, v4, v0

    .line 995
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$900()[F

    move-result-object v6

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_4
    goto/16 :goto_9

    .line 997
    :cond_5
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$300()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_e

    .line 998
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "auto_step"

    invoke-static {v0, v4, v6, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$1002(I)I

    .line 1000
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v4, 0x78

    const-string v5, "auto_rate"

    invoke-static {v0, v5, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$1102(I)I

    .line 1002
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "auto_rv"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1004
    .local v0, "rv":I
    if-ne v0, v6, :cond_6

    .line 1005
    invoke-static {v6}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$1202(Z)Z

    goto :goto_2

    .line 1007
    :cond_6
    invoke-static {v3}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$1202(Z)Z

    .line 1008
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STEP:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$1000()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " RATE:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$1100()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rv:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    .end local v0    # "rv":I
    goto/16 :goto_9

    .line 1010
    :cond_7
    const-string v0, "boost_brightness_normal"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1011
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v6, :cond_8

    move v1, v6

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraRequestBoost:Z

    .line 1014
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_9

    move v1, v6

    goto :goto_4

    :cond_9
    move v1, v3

    :goto_4
    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGalleryRequestBoost:Z

    .line 1015
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_a

    move v0, v6

    goto :goto_5

    :cond_a
    move v0, v3

    :goto_5
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCamera2GalleryRequestBoost:Z

    .line 1016
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraInFront:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraRequestBoost:Z

    if-eqz v0, :cond_b

    move v0, v6

    goto :goto_6

    :cond_b
    move v0, v3

    :goto_6
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessCamera:I

    .line 1017
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGalleryInFront:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGalleryRequestBoost:Z

    if-eqz v0, :cond_c

    move v0, v6

    goto :goto_7

    :cond_c
    move v0, v3

    :goto_7
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessGallery:I

    .line 1018
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGalleryInFront:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCamera2GalleryRequestBoost:Z

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move v6, v3

    :goto_8
    sput v6, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessCamera2Gallery:I

    .line 1021
    :cond_e
    :goto_9
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;->this$0:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-static {v0, v3}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$1300(Lcom/android/server/display/OpBrightnessReasonAndRate;Z)V

    .line 1022
    return-void
.end method

.class final Lcom/android/server/display/DisplayModeDirector$Vote;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Vote"
.end annotation


# static fields
.field public static final APP_REQUEST_REFRESH_RATE_RANGE_PRIORITY_CUTOFF:I = 0x3

.field public static final INVALID_SIZE:I = -0x1

.field public static final MAX_PRIORITY:I = 0xc

.field public static final MIN_PRIORITY:I = 0x0

.field public static final PRIORITY_APP_REQUEST_REFRESH_RATE:I = 0x3

.field public static final PRIORITY_APP_REQUEST_SIZE:I = 0x4

.field public static final PRIORITY_BRIGHTNESS_SMOOTH_RATE:I = 0x9

.field public static final PRIORITY_DEFAULT_REFRESH_RATE:I = 0x0

.field public static final PRIORITY_HIGH_TEMP_MODE:I = 0x7

.field public static final PRIORITY_LOW_BRIGHTNESS:I = 0x1

.field public static final PRIORITY_LOW_POWER_MODE:I = 0x6

.field public static final PRIORITY_MOTION_SMOOTH_RATE:I = 0xb

.field public static final PRIORITY_SPECIAL_PANEL_RATE:I = 0xc

.field public static final PRIORITY_SUN_READABLE_DISPLAY:I = 0xa

.field public static final PRIORITY_USER_SETTING_MAX_REFRESH_RATE:I = 0x8

.field public static final PRIORITY_USER_SETTING_MIN_REFRESH_RATE:I = 0x2

.field public static final PRIORITY_USER_SETTING_PEAK_REFRESH_RATE:I = 0x5


# instance fields
.field public final height:I

.field public final refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

.field public final width:I


# direct methods
.method private constructor <init>(IIFF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minRefreshRate"    # F
    .param p4, "maxRefreshRate"    # F

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    .line 845
    iput p2, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    .line 846
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    invoke-direct {v0, p3, p4}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    .line 848
    return-void
.end method

.method public static forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 2
    .param p0, "minRefreshRate"    # F
    .param p1, "maxRefreshRate"    # F

    .line 835
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFF)V

    return-object v0
.end method

.method public static forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 839
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, 0x0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFF)V

    return-object v0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "priority"    # I

    .line 851
    packed-switch p0, :pswitch_data_0

    .line 885
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 882
    :pswitch_0
    const-string v0, "PRIORITY_SPECIAL_PANEL_RATE"

    return-object v0

    .line 880
    :pswitch_1
    const-string v0, "PRIORITY_MOTION_SMOOTH_RATE"

    return-object v0

    .line 878
    :pswitch_2
    const-string v0, "PRIORITY_SUN_READABLE_DISPLAY"

    return-object v0

    .line 876
    :pswitch_3
    const-string v0, "PRIORITY_BRIGHTNESS_SMOOTH_RATE"

    return-object v0

    .line 874
    :pswitch_4
    const-string v0, "PRIORITY_USER_SETTING_MAX_REFRESH_RATE"

    return-object v0

    .line 869
    :pswitch_5
    const-string v0, "PRIORITY_HIGH_TEMP_MODE"

    return-object v0

    .line 865
    :pswitch_6
    const-string v0, "PRIORITY_LOW_POWER_MODE"

    return-object v0

    .line 863
    :pswitch_7
    const-string v0, "PRIORITY_USER_SETTING_PEAK_REFRESH_RATE"

    return-object v0

    .line 861
    :pswitch_8
    const-string v0, "PRIORITY_APP_REQUEST_SIZE"

    return-object v0

    .line 859
    :pswitch_9
    const-string v0, "PRIORITY_APP_REQUEST_REFRESH_RATE"

    return-object v0

    .line 857
    :pswitch_a
    const-string v0, "PRIORITY_USER_SETTING_MIN_REFRESH_RATE"

    return-object v0

    .line 855
    :pswitch_b
    const-string v0, "PRIORITY_LOW_BRIGHTNESS"

    return-object v0

    .line 853
    :pswitch_c
    const-string v0, "PRIORITY_DEFAULT_REFRESH_RATE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vote{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v1, v1, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

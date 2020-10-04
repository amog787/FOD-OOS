.class Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 672
    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 673
    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 674
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 675
    return-void

    :array_0
    .array-data 4
        0x102038d
        0x102038e
        0x102038f
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .line 684
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .line 679
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .line 695
    const/4 v0, 0x0

    const v1, 0x1090077

    invoke-virtual {p4, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 697
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v2

    .line 698
    .local v2, "selectedIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 699
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 700
    .local v4, "itemView":Landroid/view/View;
    if-ne v2, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 702
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 703
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    .end local v4    # "itemView":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 705
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 689
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 724
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    .line 734
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 735
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 736
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 737
    return-void
.end method

.method public onPress()V
    .locals 0

    .line 710
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .line 728
    return-void
.end method

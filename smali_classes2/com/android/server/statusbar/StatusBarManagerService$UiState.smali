.class Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiState"
.end annotation


# instance fields
.field private mAppearance:I

.field private mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field private mDisabled1:I

.field private mDisabled2:I

.field private mFullscreen:Z

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private mImmersive:Z

.field private mNavbarColorManagedByIme:Z

.field private mShowImeSwitcher:Z

.field private mTransientBarTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 1

    .line 1118
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1120
    new-array v0, p1, [Lcom/android/internal/view/AppearanceRegion;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1121
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    .line 1122
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1123
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreen:Z

    .line 1124
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImmersive:Z

    .line 1125
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1126
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 1127
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1128
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1129
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1130
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "x1"    # Lcom/android/server/statusbar/StatusBarManagerService$1;

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p3, "x3"    # Z

    .line 1118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->appearanceEquals(I[Lcom/android/internal/view/AppearanceRegion;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;I[Lcom/android/internal/view/AppearanceRegion;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p3, "x3"    # Z

    .line 1118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setAppearance(I[Lcom/android/internal/view/AppearanceRegion;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # [I

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->showTransient([I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # [I

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->clearTransient([I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled2()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1118
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->disableEquals(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1118
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setDisabled(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # Z

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setFullscreen(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # Z

    .line 1118
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImmersive(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/IBinder;

    .line 1118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImeWindowState(IIZLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreen:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImmersive:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1118
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled1()I

    move-result v0

    return v0
.end method

.method private appearanceEquals(I[Lcom/android/internal/view/AppearanceRegion;Z)Z
    .locals 5
    .param p1, "appearance"    # I
    .param p2, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p3, "navbarColorManagedByIme"    # Z

    .line 1141
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v0, v0

    array-length v2, p2

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    if-eq v0, p3, :cond_0

    goto :goto_1

    .line 1145
    :cond_0
    array-length v0, p2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1146
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v3, v3, v0

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/AppearanceRegion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1147
    return v1

    .line 1145
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1150
    .end local v0    # "i":I
    :cond_2
    return v2

    .line 1143
    :cond_3
    :goto_1
    return v1
.end method

.method private clearTransient([I)V
    .locals 5
    .param p1, "types"    # [I

    .line 1160
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1161
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1160
    .end local v2    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1163
    :cond_0
    return-void
.end method

.method private disableEquals(II)Z
    .locals 1
    .param p1, "disabled1"    # I
    .param p2, "disabled2"    # I

    .line 1187
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getDisabled1()I
    .locals 1

    .line 1174
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    return v0
.end method

.method private getDisabled2()I
    .locals 1

    .line 1178
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return v0
.end method

.method private setAppearance(I[Lcom/android/internal/view/AppearanceRegion;Z)V
    .locals 0
    .param p1, "appearance"    # I
    .param p2, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p3, "navbarColorManagedByIme"    # Z

    .line 1134
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 1135
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1136
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1137
    return-void
.end method

.method private setDisabled(II)V
    .locals 0
    .param p1, "disabled1"    # I
    .param p2, "disabled2"    # I

    .line 1182
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 1183
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 1184
    return-void
.end method

.method private setFullscreen(Z)V
    .locals 0
    .param p1, "isFullscreen"    # Z

    .line 1166
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreen:Z

    .line 1167
    return-void
.end method

.method private setImeWindowState(IIZLandroid/os/IBinder;)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I
    .param p3, "showImeSwitcher"    # Z
    .param p4, "token"    # Landroid/os/IBinder;

    .line 1192
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1193
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1194
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1195
    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 1196
    return-void
.end method

.method private setImmersive(Z)V
    .locals 0
    .param p1, "isImmersive"    # Z

    .line 1170
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImmersive:Z

    .line 1171
    return-void
.end method

.method private showTransient([I)V
    .locals 5
    .param p1, "types"    # [I

    .line 1154
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1155
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1154
    .end local v2    # "type":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1157
    :cond_0
    return-void
.end method

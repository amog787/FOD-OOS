.class Lcom/android/server/wm/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PolicyControl$Filter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static final TAG:Ljava/lang/String; = "PolicyControl"

.field private static sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field private static sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I
    .locals 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "clearableFlags"    # I

    .line 114
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    and-int/lit8 p1, p1, -0x5

    .line 118
    :cond_1
    return p1
.end method

.method static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/android/server/wm/PolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 153
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 154
    if-nez p1, :cond_0

    .line 155
    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 159
    :goto_0
    return-void
.end method

.method static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 147
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersiveStatusFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 148
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersiveNavigationFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 149
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersivePreconfirmationsFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 150
    return-void
.end method

.method static getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 68
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 69
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v0

    goto :goto_1

    .line 70
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    :goto_1
    nop

    .line 71
    .local v0, "vis":I
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    or-int/lit16 v0, v0, 0x1004

    .line 74
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    or-int/lit16 v0, v0, 0x400

    .line 77
    :cond_2
    const v1, -0x40000101    # -1.9999694f

    and-int/2addr v0, v1

    .line 80
    :cond_3
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    or-int/lit16 v0, v0, 0x1002

    .line 83
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    or-int/lit16 v0, v0, 0x200

    .line 86
    :cond_4
    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    .line 89
    :cond_5
    return v0
.end method

.method static getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 93
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 94
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 95
    .local v0, "flags":I
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    or-int/lit16 v0, v0, 0x400

    .line 97
    const v1, -0x4000801

    and-int/2addr v0, v1

    .line 100
    :cond_1
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    const v1, -0x8000001

    and-int/2addr v0, v1

    .line 105
    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpQuickReplyInjector;->isForceShowStatusBar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    or-int/lit16 v0, v0, 0x400

    .line 110
    :cond_3
    return v0
.end method

.method static reloadFromSetting(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "policy_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 134
    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eq v2, v0, :cond_1

    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 138
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    nop

    .line 143
    const/4 v1, 0x1

    return v1

    .line 135
    :cond_1
    :goto_0
    return v1

    .line 139
    :catchall_0
    move-exception v2

    .line 140
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PolicyControl"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    return v1
.end method

.method static setFilters(Ljava/lang/String;)V
    .locals 10
    .param p0, "value"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 165
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 166
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 167
    if-eqz p0, :cond_6

    .line 168
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "nvps":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 170
    .local v4, "nvp":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 171
    .local v5, "i":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 172
    :cond_0
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "n":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "v":Ljava/lang/String;
    const-string v8, "immersive.full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 175
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 176
    .local v8, "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 177
    sget-object v9, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v9, :cond_1

    .line 178
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 180
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_1
    goto :goto_2

    :cond_2
    const-string v8, "immersive.status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 181
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 182
    .restart local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 183
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    goto :goto_2

    :cond_3
    const-string v8, "immersive.navigation"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 184
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 185
    .restart local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 186
    sget-object v9, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v9, :cond_5

    .line 187
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_1

    .line 189
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_4
    const-string v8, "immersive.preconfirms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 190
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 191
    .restart local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_2

    .line 189
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_5
    :goto_1
    nop

    .line 169
    .end local v4    # "nvp":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "nvps":[Ljava/lang/String;
    :cond_6
    return-void
.end method

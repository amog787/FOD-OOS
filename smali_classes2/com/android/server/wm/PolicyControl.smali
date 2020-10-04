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

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I
    .locals 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "clearableFlags"    # I

    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    and-int/lit8 p1, p1, -0x5

    .line 111
    :cond_1
    return p1
.end method

.method static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0
.end method

.method private static dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/android/server/wm/PolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 146
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 147
    if-nez p1, :cond_0

    .line 148
    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 152
    :goto_0
    return-void
.end method

.method static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 140
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersiveStatusFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 141
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersiveNavigationFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 142
    sget-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    const-string v1, "sImmersivePreconfirmationsFilter"

    invoke-static {v1, v0, p0, p1}, Lcom/android/server/wm/PolicyControl;->dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 143
    return-void
.end method

.method static getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 65
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 66
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v0

    goto :goto_1

    .line 67
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v1

    :goto_1
    nop

    .line 68
    .local v0, "vis":I
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    or-int/lit16 v0, v0, 0x1404

    .line 72
    const v1, -0x40000101    # -1.9999694f

    and-int/2addr v0, v1

    .line 75
    :cond_2
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    or-int/lit16 v0, v0, 0x1202

    .line 79
    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    .line 82
    :cond_3
    return v0
.end method

.method static getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 86
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 87
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    .local v0, "flags":I
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    or-int/lit16 v0, v0, 0x400

    .line 90
    const v1, -0x4000801

    and-int/2addr v0, v1

    .line 93
    :cond_1
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const v1, -0x8000001

    and-int/2addr v0, v1

    .line 98
    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpQuickReplyInjector;->isForceShowStatusBar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 100
    or-int/lit16 v0, v0, 0x400

    .line 103
    :cond_3
    return v0
.end method

.method static reloadFromSetting(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    const/4 v0, 0x0

    .line 124
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

    .line 127
    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eq v2, v0, :cond_1

    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 131
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    nop

    .line 136
    const/4 v1, 0x1

    return v1

    .line 128
    :cond_1
    :goto_0
    return v1

    .line 132
    :catchall_0
    move-exception v2

    .line 133
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

    .line 134
    return v1
.end method

.method private static setFilters(Ljava/lang/String;)V
    .locals 10
    .param p0, "value"    # Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 157
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 158
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 159
    if-eqz p0, :cond_6

    .line 160
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "nvps":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 162
    .local v4, "nvp":Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 163
    .local v5, "i":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "n":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "v":Ljava/lang/String;
    const-string v8, "immersive.full"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 167
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 168
    .local v8, "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 169
    sget-object v9, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v9, :cond_1

    .line 170
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 172
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_1
    goto :goto_2

    :cond_2
    const-string v8, "immersive.status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 173
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 174
    .restart local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 175
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    goto :goto_2

    :cond_3
    const-string v8, "immersive.navigation"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 176
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 177
    .restart local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 178
    sget-object v9, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    if-nez v9, :cond_5

    .line 179
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_1

    .line 181
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_4
    const-string v8, "immersive.preconfirms"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 182
    invoke-static {v7}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    move-result-object v8

    .line 183
    .restart local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    sput-object v8, Lcom/android/server/wm/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/server/wm/PolicyControl$Filter;

    goto :goto_2

    .line 181
    .end local v8    # "f":Lcom/android/server/wm/PolicyControl$Filter;
    :cond_5
    :goto_1
    nop

    .line 161
    .end local v4    # "nvp":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "nvps":[Ljava/lang/String;
    :cond_6
    return-void
.end method

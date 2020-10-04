.class final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final MODE_PATTERN:Ljava/util/regex/Pattern;

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    nop

    .line 79
    const-string v0, "([^,]+)(,[a-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    nop

    .line 81
    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .line 94
    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .line 69
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .line 69
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static chooseOverlayGravity(I)I
    .locals 1
    .param p0, "overlayNumber"    # I

    .line 209
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 218
    const/16 v0, 0x53

    return v0

    .line 215
    :cond_0
    const/16 v0, 0x35

    return v0

    .line 213
    :cond_1
    const/16 v0, 0x55

    return v0

    .line 211
    :cond_2
    const/16 v0, 0x33

    return v0
.end method

.method private updateOverlayDisplayDevices()V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .locals 25

    .line 137
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 140
    const-string v0, ""

    move-object v9, v0

    goto :goto_0

    .line 139
    :cond_0
    move-object v9, v0

    .line 143
    .end local v0    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    :goto_0
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    return-void

    .line 146
    :cond_1
    iput-object v9, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 148
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v10, "OverlayDisplayAdapter"

    if-nez v0, :cond_3

    .line 149
    const-string v0, "Dismissing all overlay display devices."

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 151
    .local v1, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    .line 152
    .end local v1    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    :cond_3
    const/4 v0, 0x0

    .line 157
    .local v0, "count":I
    const-string v1, ";"

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    move v1, v0

    const/4 v14, 0x0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_2
    if-ge v14, v12, :cond_c

    aget-object v15, v11, v14

    .line 158
    .local v15, "part":Ljava/lang/String;
    sget-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 159
    .local v7, "displayMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 160
    const/4 v0, 0x4

    if-lt v1, v0, :cond_4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many overlay display devices specified: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    goto/16 :goto_9

    .line 164
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "modeString":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "flagString":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 167
    .local v6, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    const-string v0, "\\|"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v3, v13

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_8

    move/from16 v19, v3

    aget-object v3, v13, v2

    .line 168
    .local v3, "mode":Ljava/lang/String;
    sget-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v20, v5

    .end local v5    # "modeString":Ljava/lang/String;
    .local v20, "modeString":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 169
    .local v5, "modeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    move-object/from16 v21, v7

    const/4 v7, 0x1

    .end local v7    # "displayMatcher":Ljava/util/regex/Matcher;
    .local v21, "displayMatcher":Ljava/util/regex/Matcher;
    :try_start_0
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0xa

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 172
    .local v0, "width":I
    move-object/from16 v17, v11

    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const/16 v7, 0xa

    invoke-static {v11, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 173
    .local v11, "height":I
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v24, v5

    const/16 v5, 0xa

    .end local v5    # "modeMatcher":Ljava/util/regex/Matcher;
    .local v24, "modeMatcher":Ljava/util/regex/Matcher;
    :try_start_2
    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 174
    .local v5, "densityDpi":I
    const/16 v7, 0x64

    if-lt v0, v7, :cond_5

    const/16 v7, 0x1000

    if-gt v0, v7, :cond_5

    const/16 v7, 0x64

    if-lt v11, v7, :cond_5

    const/16 v7, 0x1000

    if-gt v11, v7, :cond_5

    const/16 v7, 0x78

    if-lt v5, v7, :cond_5

    const/16 v7, 0x280

    if-gt v5, v7, :cond_5

    .line 178
    new-instance v7, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    invoke-direct {v7, v0, v11, v5}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    goto :goto_5

    .line 181
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    .end local v0    # "width":I
    .local v22, "width":I
    const-string v0, "Ignoring out-of-range overlay display mode: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    nop

    .end local v5    # "densityDpi":I
    .end local v11    # "height":I
    .end local v22    # "width":I
    goto :goto_5

    .line 183
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v24    # "modeMatcher":Ljava/util/regex/Matcher;
    .local v5, "modeMatcher":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v17, v11

    .line 184
    .end local v5    # "modeMatcher":Ljava/util/regex/Matcher;
    .restart local v24    # "modeMatcher":Ljava/util/regex/Matcher;
    :goto_4
    goto :goto_5

    .line 185
    .end local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    .end local v24    # "modeMatcher":Ljava/util/regex/Matcher;
    .restart local v5    # "modeMatcher":Ljava/util/regex/Matcher;
    .restart local v7    # "displayMatcher":Ljava/util/regex/Matcher;
    :cond_6
    move-object/from16 v24, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v11

    .end local v5    # "modeMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v24    # "modeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    .end local v3    # "mode":Ljava/lang/String;
    .end local v24    # "modeMatcher":Ljava/util/regex/Matcher;
    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v17

    move/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    goto/16 :goto_3

    .line 189
    .end local v20    # "modeString":Ljava/lang/String;
    .end local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    .local v5, "modeString":Ljava/lang/String;
    .restart local v7    # "displayMatcher":Ljava/util/regex/Matcher;
    :cond_8
    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v11

    .end local v5    # "modeString":Ljava/lang/String;
    .end local v7    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v20    # "modeString":Ljava/lang/String;
    .restart local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 190
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .local v0, "count":I
    move v11, v0

    .line 191
    .local v11, "number":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104020c

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    .line 193
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v5, v13

    .line 191
    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "name":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/display/OverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v16

    .line 195
    .local v16, "gravity":I
    if-eqz v4, :cond_9

    const-string v1, ",secure"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    move v3, v13

    :goto_6
    move-object/from16 v18, v6

    .end local v6    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .local v18, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    move v6, v3

    .line 197
    .local v6, "secure":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing overlay display device #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v5, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v13, v3

    move-object v3, v7

    move-object/from16 v22, v4

    .end local v4    # "flagString":Ljava/lang/String;
    .local v22, "flagString":Ljava/lang/String;
    move-object/from16 v4, v18

    move/from16 v23, v0

    move-object v0, v5

    .end local v0    # "count":I
    .local v23, "count":I
    move/from16 v5, v16

    move-object/from16 v24, v7

    .end local v7    # "name":Ljava/lang/String;
    .local v24, "name":Ljava/lang/String;
    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    move/from16 v1, v23

    goto :goto_8

    .line 189
    .end local v11    # "number":I
    .end local v16    # "gravity":I
    .end local v18    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v22    # "flagString":Ljava/lang/String;
    .end local v23    # "count":I
    .end local v24    # "name":Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v4    # "flagString":Ljava/lang/String;
    .local v6, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    :cond_a
    move-object/from16 v22, v4

    move-object/from16 v18, v6

    .end local v4    # "flagString":Ljava/lang/String;
    .end local v6    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v18    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v22    # "flagString":Ljava/lang/String;
    goto :goto_7

    .line 159
    .end local v18    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v20    # "modeString":Ljava/lang/String;
    .end local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    .end local v22    # "flagString":Ljava/lang/String;
    .local v7, "displayMatcher":Ljava/util/regex/Matcher;
    :cond_b
    move-object/from16 v21, v7

    move-object/from16 v17, v11

    .line 204
    .end local v7    # "displayMatcher":Ljava/util/regex/Matcher;
    .restart local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed overlay display devices setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v15    # "part":Ljava/lang/String;
    .end local v21    # "displayMatcher":Ljava/util/regex/Matcher;
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v17

    goto/16 :goto_2

    .line 206
    :cond_c
    :goto_9
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 100
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOverlaySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverlays: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 105
    .local v1, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 106
    .end local v1    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public registerLocked()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.class public final enum Lcom/android/server/wm/ProtoLogGroup;
.super Ljava/lang/Enum;
.source "ProtoLogGroup.java"

# interfaces
.implements Lcom/android/server/protolog/common/IProtoLogGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ProtoLogGroup$Consts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/ProtoLogGroup;",
        ">;",
        "Lcom/android/server/protolog/common/IProtoLogGroup;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum TEST_GROUP:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_BOOT:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_DRAW:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_FOCUS:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

.field public static final enum WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;


# instance fields
.field private final mEnabled:Z

.field private volatile mLogToLogcat:Z

.field private volatile mLogToProto:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 30
    new-instance v7, Lcom/android/server/wm/ProtoLogGroup;

    const-string v1, "WM_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "WindowManager"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

    .line 31
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "WM_DEBUG_ORIENTATION"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    .line 33
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v2, "WM_DEBUG_FOCUS_LIGHT"

    const/4 v3, 0x2

    const/4 v6, 0x0

    const-string v7, "WindowManager"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    .line 35
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "WM_DEBUG_BOOT"

    const/4 v10, 0x3

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/server/wm/ProtoLogGroup;

    .line 37
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v2, "WM_DEBUG_RESIZE"

    const/4 v3, 0x4

    const-string v7, "WindowManager"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

    .line 39
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "WM_DEBUG_ADD_REMOVE"

    const/4 v10, 0x5

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    .line 41
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v2, "WM_DEBUG_FOCUS"

    const/4 v3, 0x6

    const-string v7, "WindowManager"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/server/wm/ProtoLogGroup;

    .line 42
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "WM_DEBUG_STARTING_WINDOW"

    const/4 v10, 0x7

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    .line 44
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v2, "WM_SHOW_TRANSACTIONS"

    const/16 v3, 0x8

    const-string v7, "WindowManager"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    .line 46
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "WM_SHOW_SURFACE_ALLOC"

    const/16 v10, 0x9

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    .line 48
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v2, "WM_DEBUG_APP_TRANSITIONS"

    const/16 v3, 0xa

    const-string v7, "WindowManager"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    .line 50
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "WM_DEBUG_APP_TRANSITIONS_ANIM"

    const/16 v10, 0xb

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    .line 52
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v2, "WM_DEBUG_RECENTS_ANIMATIONS"

    const/16 v3, 0xc

    const-string v7, "WindowManager"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    .line 54
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "WM_DEBUG_DRAW"

    const/16 v10, 0xd

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/server/wm/ProtoLogGroup;

    .line 55
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v2, "WM_DEBUG_REMOTE_ANIMATIONS"

    const/16 v3, 0xe

    const-string v7, "WindowManager"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    .line 57
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "WM_DEBUG_SCREEN_ON"

    const/16 v10, 0xf

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    .line 58
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v2, "WM_DEBUG_KEEP_SCREEN_ON"

    const/16 v3, 0x10

    const-string v7, "WindowManager"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    .line 60
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "WM_DEBUG_WINDOW_MOVEMENT"

    const/16 v10, 0x11

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/server/wm/ProtoLogGroup;

    .line 62
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v2, "WM_DEBUG_IME"

    const/16 v3, 0x12

    const-string v7, "WindowManager"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    .line 64
    new-instance v0, Lcom/android/server/wm/ProtoLogGroup;

    const-string v9, "TEST_GROUP"

    const/16 v10, 0x13

    const-string v14, "WindowManagetProtoLogTest"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ProtoLogGroup;->TEST_GROUP:Lcom/android/server/wm/ProtoLogGroup;

    .line 29
    const/16 v1, 0x14

    new-array v1, v1, [Lcom/android/server/wm/ProtoLogGroup;

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/wm/ProtoLogGroup;->$VALUES:[Lcom/android/server/wm/ProtoLogGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;)V
    .locals 0
    .param p3, "enabled"    # Z
    .param p4, "logToProto"    # Z
    .param p5, "logToLogcat"    # Z
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-boolean p3, p0, Lcom/android/server/wm/ProtoLogGroup;->mEnabled:Z

    .line 81
    iput-boolean p4, p0, Lcom/android/server/wm/ProtoLogGroup;->mLogToProto:Z

    .line 82
    iput-boolean p5, p0, Lcom/android/server/wm/ProtoLogGroup;->mLogToLogcat:Z

    .line 83
    iput-object p6, p0, Lcom/android/server/wm/ProtoLogGroup;->mTag:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static testProtoLog()V
    .locals 20

    .line 126
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->TEST_GROUP_enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .local v0, "protoLogParam0":Z
    const-wide/16 v1, 0x1

    .local v1, "protoLogParam1":J
    const-wide/16 v3, 0x2

    .local v3, "protoLogParam2":J
    const-wide/16 v5, 0x3

    .local v5, "protoLogParam3":J
    const-wide v7, 0x3fd999999999999aL    # 0.4

    .local v7, "protoLogParam4":D
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .local v9, "protoLogParam5":D
    const-wide v11, 0x3fe3333333333333L    # 0.6

    .local v11, "protoLogParam6":D
    const-string v13, "ok"

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam7":Ljava/lang/String;
    sget-object v14, Lcom/android/server/wm/ProtoLogGroup;->TEST_GROUP:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x5

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x6

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v15, v18

    const/16 v18, 0x7

    aput-object v13, v15, v18

    move/from16 v18, v0

    move-wide/from16 v16, v1

    const v0, 0x28578596

    const/16 v1, 0x2a57

    const/4 v2, 0x0

    .end local v0    # "protoLogParam0":Z
    .end local v1    # "protoLogParam1":J
    .local v16, "protoLogParam1":J
    .local v18, "protoLogParam0":Z
    invoke-static {v14, v0, v1, v2, v15}, Lcom/android/server/protolog/ProtoLogImpl;->e(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .end local v3    # "protoLogParam2":J
    .end local v5    # "protoLogParam3":J
    .end local v7    # "protoLogParam4":D
    .end local v9    # "protoLogParam5":D
    .end local v11    # "protoLogParam6":D
    .end local v13    # "protoLogParam7":Ljava/lang/String;
    .end local v16    # "protoLogParam1":J
    .end local v18    # "protoLogParam0":Z
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/ProtoLogGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ProtoLogGroup;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wm/ProtoLogGroup;
    .locals 1

    .line 29
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->$VALUES:[Lcom/android/server/wm/ProtoLogGroup;

    invoke-virtual {v0}, [Lcom/android/server/wm/ProtoLogGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/ProtoLogGroup;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/ProtoLogGroup;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/android/server/wm/ProtoLogGroup;->mEnabled:Z

    return v0
.end method

.method public isLogToAny()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/server/wm/ProtoLogGroup;->mLogToLogcat:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ProtoLogGroup;->mLogToProto:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLogToLogcat()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/server/wm/ProtoLogGroup;->mLogToLogcat:Z

    return v0
.end method

.method public isLogToProto()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/android/server/wm/ProtoLogGroup;->mLogToProto:Z

    return v0
.end method

.method public setLogToLogcat(Z)V
    .locals 0
    .param p1, "logToLogcat"    # Z

    .line 118
    iput-boolean p1, p0, Lcom/android/server/wm/ProtoLogGroup;->mLogToLogcat:Z

    .line 119
    return-void
.end method

.method public setLogToProto(Z)V
    .locals 0
    .param p1, "logToProto"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/android/server/wm/ProtoLogGroup;->mLogToProto:Z

    .line 114
    return-void
.end method

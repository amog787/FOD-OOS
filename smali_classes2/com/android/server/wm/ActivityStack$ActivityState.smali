.class final enum Lcom/android/server/wm/ActivityStack$ActivityState;
.super Ljava/lang/Enum;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/ActivityStack$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

.field public static final enum STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 327
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v1, 0x0

    const-string v2, "INITIALIZING"

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 328
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v2, 0x1

    const-string v3, "RESUMED"

    invoke-direct {v0, v3, v2}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 329
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v3, 0x2

    const-string v4, "PAUSING"

    invoke-direct {v0, v4, v3}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 330
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v4, 0x3

    const-string v5, "PAUSED"

    invoke-direct {v0, v5, v4}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 331
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v5, 0x4

    const-string v6, "STOPPING"

    invoke-direct {v0, v6, v5}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 332
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v6, 0x5

    const-string v7, "STOPPED"

    invoke-direct {v0, v7, v6}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 333
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v7, 0x6

    const-string v8, "FINISHING"

    invoke-direct {v0, v8, v7}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 334
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/4 v8, 0x7

    const-string v9, "DESTROYING"

    invoke-direct {v0, v9, v8}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 335
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/16 v9, 0x8

    const-string v10, "DESTROYED"

    invoke-direct {v0, v10, v9}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 336
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    const/16 v10, 0x9

    const-string v11, "RESTARTING_PROCESS"

    invoke-direct {v0, v11, v10}, Lcom/android/server/wm/ActivityStack$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 326
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v11, v0, v1

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->$VALUES:[Lcom/android/server/wm/ActivityStack$ActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 326
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack$ActivityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 326
    const-class v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack$ActivityState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wm/ActivityStack$ActivityState;
    .locals 1

    .line 326
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->$VALUES:[Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0}, [Lcom/android/server/wm/ActivityStack$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/ActivityStack$ActivityState;

    return-object v0
.end method

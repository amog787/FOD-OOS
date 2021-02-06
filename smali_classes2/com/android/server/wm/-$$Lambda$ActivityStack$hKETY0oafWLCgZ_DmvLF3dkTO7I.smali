.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$hKETY0oafWLCgZ_DmvLF3dkTO7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$hKETY0oafWLCgZ_DmvLF3dkTO7I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$hKETY0oafWLCgZ_DmvLF3dkTO7I;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$hKETY0oafWLCgZ_DmvLF3dkTO7I;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$hKETY0oafWLCgZ_DmvLF3dkTO7I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$hKETY0oafWLCgZ_DmvLF3dkTO7I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/ActivityStack;->lambda$finishAllActivitiesImmediately$5(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

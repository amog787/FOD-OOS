.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodClientIdSource"
.end annotation


# static fields
.field private static sNextValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 634
    const/4 v0, 0x0

    sput v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->sNextValue:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    return-void
.end method

.method static declared-synchronized getNext()I
    .locals 3

    const-class v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;

    monitor-enter v0

    .line 640
    :try_start_0
    sget v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->sNextValue:I

    .line 641
    .local v1, "result":I
    sget v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->sNextValue:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->sNextValue:I

    .line 642
    if-gez v2, :cond_0

    .line 643
    const/4 v2, 0x0

    sput v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;->sNextValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :cond_0
    monitor-exit v0

    return v1

    .line 639
    .end local v1    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

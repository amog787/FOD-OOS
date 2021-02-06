.class final enum Lcom/google/android/startop/iorap/EventSequenceValidator$State;
.super Ljava/lang/Enum;
.source "EventSequenceValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/EventSequenceValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/startop/iorap/EventSequenceValidator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

.field public static final enum UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 260
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 261
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v1, "INTENT_STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 262
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v1, "INTENT_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 263
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v1, "ACTIVITY_LAUNCHED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 264
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v1, "ACTIVITY_CANCELLED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 265
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v1, "ACTIVITY_FINISHED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 266
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v1, "REPORT_FULLY_DRAWN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 267
    new-instance v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const-string v1, "UNKNOWN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/android/startop/iorap/EventSequenceValidator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 259
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v10, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v10, v1, v2

    sget-object v2, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->$VALUES:[Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/startop/iorap/EventSequenceValidator$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 259
    const-class v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/startop/iorap/EventSequenceValidator$State;
    .locals 1

    .line 259
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->$VALUES:[Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    invoke-virtual {v0}, [Lcom/google/android/startop/iorap/EventSequenceValidator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    return-object v0
.end method

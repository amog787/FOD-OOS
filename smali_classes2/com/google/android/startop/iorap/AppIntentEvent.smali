.class public Lcom/google/android/startop/iorap/AppIntentEvent;
.super Ljava/lang/Object;
.source "AppIntentEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/AppIntentEvent$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/AppIntentEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_DEFAULT_INTENT_CHANGED:I

.field private static final TYPE_MAX:I


# instance fields
.field public final newActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

.field public final oldActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/google/android/startop/iorap/AppIntentEvent$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/AppIntentEvent$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/AppIntentEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILcom/google/android/startop/iorap/ActivityInfo;Lcom/google/android/startop/iorap/ActivityInfo;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "oldActivityInfo"    # Lcom/google/android/startop/iorap/ActivityInfo;
    .param p3, "newActivityInfo"    # Lcom/google/android/startop/iorap/ActivityInfo;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->type:I

    .line 72
    iput-object p2, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->oldActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    .line 73
    iput-object p3, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->newActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    .line 75
    invoke-direct {p0}, Lcom/google/android/startop/iorap/AppIntentEvent;->checkConstructorArguments()V

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->type:I

    .line 116
    sget-object v0, Lcom/google/android/startop/iorap/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/startop/iorap/ActivityInfo;

    iput-object v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->oldActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    .line 117
    sget-object v0, Lcom/google/android/startop/iorap/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/startop/iorap/ActivityInfo;

    iput-object v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->newActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    .line 119
    invoke-direct {p0}, Lcom/google/android/startop/iorap/AppIntentEvent;->checkConstructorArguments()V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/AppIntentEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/startop/iorap/AppIntentEvent$1;

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/AppIntentEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .locals 2

    .line 79
    iget v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->type:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/startop/iorap/CheckHelpers;->checkTypeInRange(II)V

    .line 80
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->oldActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    const-string v1, "oldActivityInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->oldActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    const-string v1, "newActivityInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public static createDefaultIntentChanged(Lcom/google/android/startop/iorap/ActivityInfo;Lcom/google/android/startop/iorap/ActivityInfo;)Lcom/google/android/startop/iorap/AppIntentEvent;
    .locals 2
    .param p0, "oldActivityInfo"    # Lcom/google/android/startop/iorap/ActivityInfo;
    .param p1, "newActivityInfo"    # Lcom/google/android/startop/iorap/ActivityInfo;

    .line 65
    new-instance v0, Lcom/google/android/startop/iorap/AppIntentEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/startop/iorap/AppIntentEvent;-><init>(ILcom/google/android/startop/iorap/ActivityInfo;Lcom/google/android/startop/iorap/ActivityInfo;)V

    return-object v0
.end method

.method private equals(Lcom/google/android/startop/iorap/AppIntentEvent;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/android/startop/iorap/AppIntentEvent;

    .line 101
    iget v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->type:I

    iget v1, p1, Lcom/google/android/startop/iorap/AppIntentEvent;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->oldActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    iget-object v1, p1, Lcom/google/android/startop/iorap/AppIntentEvent;->oldActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    .line 102
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->newActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    iget-object v1, p1, Lcom/google/android/startop/iorap/AppIntentEvent;->newActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    .line 103
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 92
    if-ne p0, p1, :cond_0

    .line 93
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_0
    instance-of v0, p1, Lcom/google/android/startop/iorap/AppIntentEvent;

    if-eqz v0, :cond_1

    .line 95
    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/AppIntentEvent;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/AppIntentEvent;->equals(Lcom/google/android/startop/iorap/AppIntentEvent;)Z

    move-result v0

    return v0

    .line 97
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->oldActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->newActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "{oldActivityInfo: %s, newActivityInfo: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->oldActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/startop/iorap/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/startop/iorap/AppIntentEvent;->newActivityInfo:Lcom/google/android/startop/iorap/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/startop/iorap/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    return-void
.end method

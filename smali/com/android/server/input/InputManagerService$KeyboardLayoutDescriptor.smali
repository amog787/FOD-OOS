.class final Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutDescriptor"
.end annotation


# instance fields
.field public keyboardLayoutName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public receiverName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "receiverName"    # Ljava/lang/String;
    .param p2, "keyboardName"    # Ljava/lang/String;

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    .locals 5
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 2381
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2382
    .local v1, "pos":I
    const/4 v2, 0x0

    if-ltz v1, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 2385
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2386
    .local v0, "pos2":I
    add-int/lit8 v3, v1, 0x2

    if-lt v0, v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 2390
    :cond_1
    new-instance v2, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    invoke-direct {v2}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;-><init>()V

    .line 2391
    .local v2, "result":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    .line 2392
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    .line 2393
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    .line 2394
    return-object v2

    .line 2387
    .end local v2    # "result":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    :cond_2
    :goto_0
    return-object v2

    .line 2383
    .end local v0    # "pos2":I
    :cond_3
    :goto_1
    return-object v2
.end method

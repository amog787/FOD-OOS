.class final Lcom/android/server/appop/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Op"
.end annotation


# instance fields
.field final mAttributions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/AppOpsService$AttributedOp;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I

.field op:I

.field final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field uid:I

.field final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "uidState"    # Lcom/android/server/appop/AppOpsService$UidState;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "uid"    # I

    .line 1182
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1180
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 1183
    iput p4, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 1184
    iput p5, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 1185
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 1186
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1187
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    .line 1188
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p1, "x1"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "x2"    # Ljava/lang/String;

    .line 1171
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/appop/AppOpsService$Op;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;

    .line 1171
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/appop/AppOpsService$Op;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p1, "x1"    # I

    .line 1171
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return p1
.end method

.method private getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    .locals 3
    .param p1, "parent"    # Lcom/android/server/appop/AppOpsService$Op;
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 1210
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 1211
    .local v0, "attributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    if-nez v0, :cond_0

    .line 1212
    new-instance v1, Lcom/android/server/appop/AppOpsService$AttributedOp;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {v1, v2, p2, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V

    move-object v0, v1

    .line 1213
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    :cond_0
    return-object v0
.end method


# virtual methods
.method createEntryLocked()Landroid/app/AppOpsManager$OpEntry;
    .locals 5

    .line 1220
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1222
    .local v0, "numAttributions":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1224
    .local v1, "attributionEntries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1225
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 1226
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    .line 1225
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1229
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-direct {v2, v3, v4, v1}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    return-object v2
.end method

.method createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;
    .locals 5
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 1233
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1235
    .local v0, "numAttributions":I
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1236
    .local v1, "attributionEntries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1237
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1238
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 1239
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    .line 1238
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    goto :goto_1

    .line 1236
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1244
    .end local v2    # "i":I
    :cond_1
    :goto_1
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-direct {v2, v3, v4, v1}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    return-object v2
.end method

.method evalMode()I
    .locals 3

    .line 1195
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v0

    return v0
.end method

.method getMode()I
    .locals 1

    .line 1191
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method isRunning()Z
    .locals 3

    .line 1248
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1249
    .local v0, "numAttributions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1250
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1251
    const/4 v2, 0x1

    return v2

    .line 1249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1255
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method removeAttributionsWithNoTime()V
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1200
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->hasAnyTime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1201
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1199
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1204
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.class public Lcom/android/server/pm/OpPackageManagerHelperInjector;
.super Ljava/lang/Object;
.source "OpPackageManagerHelperInjector.java"


# static fields
.field private static final CARRIER_APP_FOR_SIG_PERMS_MATCH_EXACTLY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final CTSPACKAGE_SIGNATURES:[Landroid/content/pm/Signature;

.field private static final DEBUG:Z

.field private static final ORDINARY_APP_FOR_SIG_PERMS_MATCH_EXACTLY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ORDINARY_APP_FOR_SIG_PERMS_MATCH_PARTIALLY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SIGNATURE_SHA256_CDM:Ljava/lang/String; = "27:F9:6D:BA:B7:7B:31:F6:95:3E:4C:D2:C2:DE:FE:15:F5:D7:C7:8F:07:3D:D7:16:20:18:EF:47:6B:09:7C:34"

.field private static final TAG:Ljava/lang/String;

.field private static final WHITELISTED_USER_NAMES_FOR_UNINSTALL_SILENTLY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAdbConnected:Z

.field private static mCtsPackageInstalled:Z

.field private static sAlertDialog:Landroid/app/AlertDialog;

.field private static sIOpPackageManagerHelper:Lcom/android/server/pm/IOpPackageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->DEBUG:Z

    .line 45
    const-class v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->mAdbConnected:Z

    .line 51
    sput-boolean v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->mCtsPackageInstalled:Z

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/pm/Signature;

    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308204a830820390a003020102020900936eacbe07f201df300d06092a864886f70d0101050500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303232393031333334365a170d3335303731373031333334365a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100d6931904dec60b24b1edc762e0d9d8253e3ecd6ceb1de2ff068ca8e8bca8cd6bd3786ea70aa76ce60ebb0f993559ffd93e77a943e7e83d4b64b8e4fea2d3e656f1e267a81bbfb230b578c20443be4c7218b846f5211586f038a14e89c2be387f8ebecf8fcac3da1ee330c9ea93d0a7c3dc4af350220d50080732e0809717ee6a053359e6a694ec2cb3f284a0a466c87a94d83b31093a67372e2f6412c06e6d42f15818dffe0381cc0cd444da6cddc3b82458194801b32564134fbfde98c9287748dbf5676a540d8154c8bbca07b9e247553311c46b9af76fdeeccc8e69e7c8a2d08e782620943f99727d3c04fe72991d99df9bae38a0b2177fa31d5b6afee91f020103a381fc3081f9301d0603551d0e04160414485900563d272c46ae118605a47419ac09ca8c113081c90603551d230481c13081be8014485900563d272c46ae118605a47419ac09ca8c11a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900936eacbe07f201df300c0603551d13040530030101ff300d06092a864886f70d010105050003820101007aaf968ceb50c441055118d0daabaf015b8a765a27a715a2c2b44f221415ffdace03095abfa42df70708726c2069e5c36eddae0400be29452c084bc27eb6a17eac9dbe182c204eb15311f455d824b656dbe4dc2240912d7586fe88951d01a8feb5ae5a4260535df83431052422468c36e22c2a5ef994d61dd7306ae4c9f6951ba3c12f1d1914ddc61f1a62da2df827f603fea5603b2c540dbd7c019c36bab29a4271c117df523cdbc5f3817a49e0efa60cbd7f74177e7a4f193d43f4220772666e4c4d83e1bd5a86087cf34f2dec21e245ca6c2bb016e683638050d2c430eea7c26a1c49d3760a58ab7f1a82cc938b4831384324bd0401fa12163a50570e684d"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/server/pm/OpPackageManagerHelperInjector;->CTSPACKAGE_SIGNATURES:[Landroid/content/pm/Signature;

    .line 59
    new-instance v0, Landroid/util/ArraySet;

    const-string/jumbo v1, "oppo.uid.nearme"

    const-string/jumbo v2, "oppo.uid.gc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->WHITELISTED_USER_NAMES_FOR_UNINSTALL_SILENTLY:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->ORDINARY_APP_FOR_SIG_PERMS_MATCH_EXACTLY:Ljava/util/Map;

    .line 70
    const-string v0, "com.vfuchongcontrol"

    .line 71
    .local v0, "PKG_NAME_VFUCHONG":Ljava/lang/String;
    const-string v1, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, "sigPermsForVfuchong":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/pm/OpPackageManagerHelperInjector;->ORDINARY_APP_FOR_SIG_PERMS_MATCH_EXACTLY:Ljava/util/Map;

    const-string v3, "com.vfuchongcontrol"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v0    # "PKG_NAME_VFUCHONG":Ljava/lang/String;
    .end local v1    # "sigPermsForVfuchong":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->ORDINARY_APP_FOR_SIG_PERMS_MATCH_PARTIALLY:Ljava/util/Map;

    .line 81
    const-string/jumbo v0, "nearme.gamecenter"

    .line 82
    .local v0, "PKG_NAMES_CONTAINING_GAME_CENTER":Ljava/lang/String;
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, "sigPermsForPackageNameEndsWithGameCenter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/pm/OpPackageManagerHelperInjector;->ORDINARY_APP_FOR_SIG_PERMS_MATCH_PARTIALLY:Ljava/util/Map;

    const-string/jumbo v3, "nearme.gamecenter"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v0    # "PKG_NAMES_CONTAINING_GAME_CENTER":Ljava/lang/String;
    .end local v1    # "sigPermsForPackageNameEndsWithGameCenter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->CARRIER_APP_FOR_SIG_PERMS_MATCH_EXACTLY:Ljava/util/Map;

    .line 96
    const-string v0, "com.sprint.ms.cdm"

    .line 97
    .local v0, "PKG_NAME_CDM":Ljava/lang/String;
    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "sigPermsForCarrierPackageCDM":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/pm/OpPackageManagerHelperInjector;->CARRIER_APP_FOR_SIG_PERMS_MATCH_EXACTLY:Ljava/util/Map;

    const-string v3, "com.sprint.ms.cdm"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v0    # "PKG_NAME_CDM":Ljava/lang/String;
    .end local v1    # "sigPermsForCarrierPackageCDM":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowCarrierAppGrantingSigPerms(Landroid/content/Context;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "permName"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 107
    return v0

    .line 110
    :cond_0
    sget-object v1, Lcom/android/server/pm/OpPackageManagerHelperInjector;->CARRIER_APP_FOR_SIG_PERMS_MATCH_EXACTLY:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 111
    .local v1, "sigPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA256"

    invoke-static {p0, v2, v3}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->getAppSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "sig":Ljava/lang/String;
    const-string v3, "27:F9:6D:BA:B7:7B:31:F6:95:3E:4C:D2:C2:DE:FE:15:F5:D7:C7:8F:07:3D:D7:16:20:18:EF:47:6B:09:7C:34"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    const/4 v0, 0x1

    return v0

    .line 118
    .end local v2    # "sig":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static allowMarketToUninstallAppsSilently(Ljava/lang/String;)Z
    .locals 5
    .param p0, "nameForUid"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 200
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "sharedUserName":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/OpPackageManagerHelperInjector;->WHITELISTED_USER_NAMES_FOR_UNINSTALL_SILENTLY:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    sget-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowing shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to uninstall apps silently"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x1

    return v0

    .line 208
    .end local v1    # "index":I
    .end local v2    # "sharedUserName":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static allowOrdinaryAppGrantingSigPerms(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 8
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "permName"    # Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 162
    return v0

    .line 166
    :cond_0
    sget-object v1, Lcom/android/server/pm/OpPackageManagerHelperInjector;->ORDINARY_APP_FOR_SIG_PERMS_MATCH_EXACTLY:Ljava/util/Map;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 167
    .local v1, "sigPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    return v2

    .line 172
    :cond_1
    sget-object v3, Lcom/android/server/pm/OpPackageManagerHelperInjector;->ORDINARY_APP_FOR_SIG_PERMS_MATCH_PARTIALLY:Ljava/util/Map;

    .line 173
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 174
    .local v3, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 175
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 176
    .local v6, "partialPkgName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 177
    return v2

    .line 179
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "partialPkgName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 181
    :cond_3
    return v0
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 239
    if-nez p0, :cond_1

    .line 240
    if-nez p1, :cond_0

    .line 241
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    const/4 v0, -0x1

    .line 240
    :goto_0
    return v0

    .line 244
    :cond_1
    if-nez p1, :cond_2

    .line 245
    const/4 v0, -0x2

    return v0

    .line 247
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 248
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 249
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v4    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 252
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v3, p1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    .line 253
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 256
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 257
    return v2

    .line 259
    :cond_5
    const/4 v2, -0x3

    return v2
.end method

.method public static getAppSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 122
    const-string v0, ""

    .line 124
    .local v0, "signStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 126
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 127
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 128
    .local v2, "signs":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 129
    .local v3, "sign":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->hexDigest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 133
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signs":[Landroid/content/pm/Signature;
    .end local v3    # "sign":Landroid/content/pm/Signature;
    :cond_0
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getCtsPackageInstalled()Z
    .locals 1

    .line 235
    sget-boolean v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->mCtsPackageInstalled:Z

    return v0
.end method

.method public static hexDigest([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 140
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .local v0, "md5":Ljava/security/MessageDigest;
    nop

    .line 145
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 146
    .local v1, "md5Bytes":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v2, "hexValue":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 148
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "appendString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 150
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    .end local v4    # "appendString":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 141
    .end local v0    # "md5":Ljava/security/MessageDigest;
    .end local v1    # "md5Bytes":[B
    .end local v2    # "hexValue":Ljava/lang/StringBuffer;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const-string v1, ""

    return-object v1
.end method

.method public static isGooglePlayComponent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 212
    const-string v0, "com.android.vending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x1

    return v0

    .line 217
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInSpecialTesting()Z
    .locals 1

    .line 263
    sget-boolean v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->mAdbConnected:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->mCtsPackageInstalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 1
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .line 185
    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->makeSureInstanceInitialized()V

    .line 186
    sget-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->sIOpPackageManagerHelper:Lcom/android/server/pm/IOpPackageManagerHelper;

    invoke-interface {v0, p0}, Lcom/android/server/pm/IOpPackageManagerHelper;->isTrustedSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v0

    return v0
.end method

.method private static makeSureInstanceInitialized()V
    .locals 1

    .line 190
    sget-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->sIOpPackageManagerHelper:Lcom/android/server/pm/IOpPackageManagerHelper;

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_package_manager_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 192
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IOpPackageManagerHelper;

    sput-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->sIOpPackageManagerHelper:Lcom/android/server/pm/IOpPackageManagerHelper;

    .line 194
    :cond_0
    return-void
.end method

.method public static maybeChangePackageFlags(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 267
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xf

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isInSpecialTesting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 269
    const-string v2, "com.google.android.syncadapters.contacts"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 270
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 273
    :cond_0
    return-void
.end method

.method public static setAdbState(Z)V
    .locals 0
    .param p0, "state"    # Z

    .line 221
    sput-boolean p0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->mAdbConnected:Z

    .line 222
    return-void
.end method

.method public static setCtsPackageInstalled(Ljava/lang/String;[Landroid/content/pm/Signature;Z)V
    .locals 1
    .param p0, "packagename"    # Ljava/lang/String;
    .param p1, "signature"    # [Landroid/content/pm/Signature;
    .param p2, "state"    # Z

    .line 225
    const-string v0, "com.android.tradefed.utils.wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->CTSPACKAGE_SIGNATURES:[Landroid/content/pm/Signature;

    invoke-static {p1, v0}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->mCtsPackageInstalled:Z

    goto :goto_0

    .line 229
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/OpPackageManagerHelperInjector;->mCtsPackageInstalled:Z

    .line 232
    :cond_1
    :goto_0
    return-void
.end method
